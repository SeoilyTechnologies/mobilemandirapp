# PDF 3 - Isolates, Event Loop, Microtask Queue, compute()

Ye PDF Isolates ko 0 se advanced tak explain karta hai: why needed, event loop, microtask queue, compute, SendPort/ReceivePort, lifecycle, error handling.

## Roadmap

```text
UI freeze problem
  -> Event loop
  -> Microtask queue
  -> Isolate concept
  -> SendPort / ReceivePort
  -> Isolate.spawn()
  -> Passing data
  -> Returning result
  -> compute()
  -> Lifecycle
  -> Error handling
  -> Production use cases
```

## 1. Isolate Kyun Chahiye?

Flutter UI main isolate par chalti hai. Heavy CPU work main isolate par hua to UI freeze ho sakti hai.

```dart
void heavyWork() {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  print(sum);
}
```

Problem:

```text
Main isolate busy
  -> UI update wait
  -> scroll lag
  -> animation lag
  -> app hang feeling
```

## 2. Event Loop

```text
Main Isolate
  -> Call Stack
  -> Microtask Queue
  -> Event Queue
  -> Event Loop
```

```dart
void main() {
  print("A");

  Future(() {
    print("B");
  });

  print("C");
}
```

Output:

```text
A
C
B
```

## 3. Microtask Queue

```dart
import 'dart:async';

void main() {
  print("A");

  scheduleMicrotask(() {
    print("Microtask");
  });

  Future(() {
    print("Future");
  });

  print("C");
}
```

Output:

```text
A
C
Microtask
Future
```

GOLDEN NOTE:

```text
Microtask queue event queue se pehle run hoti hai.
```

## 4. Isolate Kya Hai?

Isolate independent worker hai jiske paas own memory aur own event loop hota hai.

```text
Main Isolate
  memory A
  event loop A

Worker Isolate
  memory B
  event loop B
```

GOLDEN NOTE:

```text
Isolates memory share nahi karte. Message passing se communicate karte hain.
```

## 5. Thread vs Isolate

| Thread | Isolate |
|---|---|
| Memory share kar sakta hai | Memory share nahi hoti |
| Race condition possible | Race condition risk kam |
| Locks ki zarurat pad sakti hai | Message passing |
| Shared state bugs | Independent state |

## 6. ReceivePort and SendPort

```text
ReceivePort = mailbox
SendPort = mailbox ka address
```

```dart
import 'dart:isolate';

void main() {
  final receivePort = ReceivePort();

  receivePort.listen((message) {
    print(message);
  });

  receivePort.sendPort.send("Hello");
}
```

## 7. Isolate.spawn() Basic Example

```dart
import 'dart:isolate';

void worker(String message) {
  print(message);
}

void main() {
  Isolate.spawn(worker, "Hello Worker");
}
```

## 8. Worker Se Main Ko Result

```dart
import 'dart:isolate';

void worker(SendPort sendPort) {
  sendPort.send("Data From Worker");
}

void main() {
  final receivePort = ReceivePort();

  Isolate.spawn(worker, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);
  });
}
```

## 9. Multiple Values - List Method

```dart
import 'dart:isolate';

void calculate(List<dynamic> data) {
  final SendPort sendPort = data[0];
  final int number = data[1];

  int sum = 0;
  for (int i = 0; i <= number; i++) {
    sum += i;
  }

  sendPort.send(sum);
}

void main() async {
  final receivePort = ReceivePort();
  await Isolate.spawn(calculate, [receivePort.sendPort, 100]);

  receivePort.listen((message) {
    print("Result: $message");
  });
}
```

## 10. Multiple Values - Map Method

```dart
import 'dart:isolate';

void calculate(Map<String, dynamic> data) {
  final SendPort sendPort = data["sendPort"];
  final int number = data["number"];

  int sum = 0;
  for (int i = 0; i <= number; i++) {
    sum += i;
  }

  sendPort.send(sum);
}

void main() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(calculate, {
    "sendPort": receivePort.sendPort,
    "number": 100,
  });

  receivePort.listen(print);
}
```

## 11. Multiple Values - Custom Class Method

```dart
import 'dart:isolate';

class IsolateData {
  final SendPort sendPort;
  final int number;

  IsolateData({
    required this.sendPort,
    required this.number,
  });
}

void calculate(IsolateData data) {
  int sum = 0;
  for (int i = 0; i <= data.number; i++) {
    sum += i;
  }

  data.sendPort.send(sum);
}

void main() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(
    calculate,
    IsolateData(sendPort: receivePort.sendPort, number: 100),
  );

  receivePort.listen(print);
}
```

GOLDEN NOTE:

```text
Production me Custom Class method readable aur type-safe hota hai.
```

## 12. compute()

Flutter ka compute one-time heavy task ke liye simple isolate helper hai.

```dart
import 'package:flutter/foundation.dart';

int calculateSum(int number) {
  int sum = 0;
  for (int i = 0; i <= number; i++) {
    sum += i;
  }
  return sum;
}

void main() async {
  final result = await compute(calculateSum, 100);
  print(result);
}
```

```text
compute()
  -> isolate create
  -> task run
  -> result return
  -> isolate close
```

## 13. compute With Model Parsing

```dart
import 'dart:convert';
import 'package:flutter/foundation.dart';

class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json["id"], name: json["name"]);
  }
}

List<User> parseUsers(String jsonString) {
  final List<dynamic> list = jsonDecode(jsonString);
  return list.map((item) => User.fromJson(item)).toList();
}

Future<void> main() async {
  final jsonString = '[{"id":1,"name":"Aman"},{"id":2,"name":"Ravi"}]';
  final users = await compute(parseUsers, jsonString);
  print(users.length);
}
```

## 14. Isolate Lifecycle

```text
Create
Initialize memory/event loop
Running
Waiting
Running again
Killed
```

## 15. Isolate.kill()

```dart
final isolate = await Isolate.spawn(worker, data);
isolate.kill(priority: Isolate.immediate);
```

Cleanup chart:

```text
Long-running isolate end:
  -> isolate.kill()
  -> receivePort.close()
  -> subscription.cancel()
```

## 16. Error Handling

```dart
import 'dart:isolate';

void worker(SendPort sendPort) {
  throw Exception("Worker failed");
}

void main() async {
  final receivePort = ReceivePort();
  final errorPort = ReceivePort();

  await Isolate.spawn(
    worker,
    receivePort.sendPort,
    onError: errorPort.sendPort,
  );

  errorPort.listen((error) {
    print("Error from isolate: $error");
  });
}
```

## 17. TransferableTypedData

Large binary data ke liye copy cost avoid karne me useful.

```dart
import 'dart:isolate';
import 'dart:typed_data';

void sendLargeBytes(SendPort sendPort, Uint8List bytes) {
  final data = TransferableTypedData.fromList([bytes]);
  sendPort.send(data);
}

void receiveLargeBytes(TransferableTypedData data) {
  final bytes = data.materialize().asUint8List();
  print(bytes.length);
}
```

## 18. Worker Pool Concept

```text
Bad:
100 tasks -> 100 isolates create/destroy

Good:
4 workers create -> 100 tasks reuse
```

Use cases: image compression batch, OCR, video processing, ML batch processing.

## 19. When To Use What

| Situation | Use |
|---|---|
| Simple API call | Future/async-await |
| One-time heavy CPU task | compute() |
| Long-running worker | Isolate.spawn() |
| Large binary data | TransferableTypedData |
| Many repeated heavy tasks | Worker Pool |

## Interview Questions And Answers

Q1. Isolate kyun chahiye?

Answer: Heavy CPU work ko main isolate se alag run karne ke liye, taki UI smooth rahe.

Q2. Isolate kya hai?

Answer: Independent worker with own memory and own event loop.

Q3. Isolates memory share karte hain?

Answer: Nahi, message passing se communicate karte hain.

Q4. ReceivePort kya hai?

Answer: Message receive karne ka mailbox.

Q5. SendPort kya hai?

Answer: Message bhejne ke liye mailbox ka address.

Q6. Isolate.spawn() me multiple values kaise bhejte hain?

Answer: List, Map, ya Custom Class se wrap karke.

Q7. compute() kab use karte hain?

Answer: One-time heavy CPU task ke liye.

Q8. compute aur Isolate.spawn me difference?

Answer: compute short-life worker, Isolate.spawn long-running/custom worker.

Q9. Event Loop kya hai?

Answer: Scheduler jo queued async tasks ko run karta hai.

Q10. Microtask queue ki priority?

Answer: Event queue se high priority.

Q11. API call ke liye isolate chahiye?

Answer: Generally nahi, API already async hai.

Q12. Worker Pool kya hai?

Answer: Reusable isolates ka group for many repeated heavy tasks.