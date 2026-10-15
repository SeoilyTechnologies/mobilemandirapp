# Dart Async, Stream, Isolate - Complete Notes

Ye notes beginner se advanced order me hain. Flow aisa rakha hai ki pehle Dart ka async system samjhe, phir Stream, phir Isolate, aur last me production/interview concepts.

## 1. Sabse Pehle Problem Samjho

Flutter UI main isolate par chalti hai. Agar main isolate heavy kaam me busy ho gaya, to UI freeze lagti hai.

```dart
ElevatedButton(
  onPressed: () {
    for (int i = 0; i < 10000000000; i++) {
      // heavy work
    }
  },
  child: const Text("Start"),
)
```

Button click ke baad animation, scroll, tap response sab ruk sakta hai. Reason: main isolate UI bhi handle kar raha hai aur heavy calculation bhi.

Real life analogy: restaurant me ek hi worker ho. Order lena, khana banana, payment lena sab wahi kare. Agar woh cooking me busy ho gaya, customers wait karenge.

## 2. Dart Async System Ka Basic Model

Dart me async code ko manage karne ke liye event loop hota hai.

```text
Main Isolate
|
|-- Call Stack
|-- Microtask Queue  (high priority)
|-- Event Queue      (normal priority)
|-- Event Loop
```

Golden rule:

```text
Pehle Microtask Queue
Fir Event Queue
```

## 3. Event Loop Kya Hai?

Event Loop ek manager hai jo decide karta hai kaunsa task kab run hoga.

Example:

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

Reason:

1. `A` immediately print hua.
2. `Future` event queue me gaya.
3. `C` immediately print hua.
4. Main code complete.
5. Event loop ne event queue se Future run kiya.

## 4. Microtask Queue

Microtask queue high priority queue hai. Ye event queue se pehle chalti hai.

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

Rule: Microtask always wins against Future/Event Queue.

Danger:

```dart
import 'dart:async';

void main() {
  void loop() {
    scheduleMicrotask(() {
      print("Again");
      loop();
    });
  }

  loop();
}
```

Ye infinite microtasks bana dega. Event queue ko chance nahi milega. App hang ho sakti hai. Isliye microtask me heavy kaam mat karo.

## 5. Future Kya Hai?

Future ka matlab hai ek value jo abhi available nahi hai, lekin baad me milegi.

```text
Future = ek baar result
```

Example:

```dart
Future<String> getName() async {
  return "Aman";
}

void main() async {
  final name = await getName();
  print(name);
}
```

Output:

```text
Aman
```

Future states:

- Uncompleted: kaam chal raha hai.
- Completed with value: result mil gaya.
- Completed with error: error aa gaya.

## 6. Future Constructors

`Future(() {})` event queue me task schedule karta hai.

```dart
Future(() {
  print("Event queue task");
});
```

`Future.delayed()` delay ke baad run hota hai.

```dart
Future.delayed(const Duration(seconds: 1), () {
  print("After 1 second");
});
```

`Future.value()` already completed value deta hai.

```dart
final future = Future.value(10);
```

`Future.error()` already completed error deta hai.

```dart
final future = Future.error("Failed");
```

`Future.microtask()` microtask queue me task schedule karta hai.

```dart
Future.microtask(() {
  print("Microtask future");
});
```

`Future.sync()` sync function ko Future me wrap karta hai.

```dart
Future.sync(() {
  return 100;
});
```

## 7. then(), catchError(), whenComplete()

```dart
Future(() {
  return 10;
}).then((value) {
  print(value);
}).catchError((error) {
  print("Error: $error");
}).whenComplete(() {
  print("Done");
});
```

Important: `then()` Future complete hone ke baad run hota hai. Future ka continuation microtask priority me aa sakta hai.

## 8. async/await

`async` function ko Future-returning function banata hai. `await` Future complete hone tak current async function ko pause karta hai, UI thread ko block nahi karta.

```dart
Future<String> fetchUser() async {
  await Future.delayed(const Duration(seconds: 1));
  return "User loaded";
}

void main() async {
  print("Start");
  final result = await fetchUser();
  print(result);
  print("End");
}
```

Output:

```text
Start
User loaded
End
```

## 9. Stream Kya Hai?

Future ek single result deta hai. Stream multiple values time ke sath deta hai.

```text
Future = ek baar result
Stream = baar-baar result
```

Examples:

- Chat messages
- Firebase snapshots
- Location updates
- Timer ticks
- Live score

```dart
Stream<int> countStream() async* {
  yield 1;
  yield 2;
  yield 3;
}

void main() {
  countStream().listen((value) {
    print(value);
  });
}
```

Output:

```text
1
2
3
```

## 10. async* and yield

`async*` stream function banata hai. `yield` stream me value emit karta hai.

```dart
Stream<int> timerStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() {
  timerStream().listen((value) {
    print("Tick $value");
  });
}
```

## 11. StreamController

StreamController manually stream control karne ke liye use hota hai.

```text
StreamController = stream ka remote control
```

Isse tum:

- data add kar sakte ho: `add()`
- error add kar sakte ho: `addError()`
- stream close kar sakte ho: `close()`
- stream expose kar sakte ho: `controller.stream`

```dart
import 'dart:async';

void main() {
  final controller = StreamController<int>();

  controller.stream.listen((value) {
    print("Received: $value");
  });

  controller.add(1);
  controller.add(2);
  controller.add(3);

  controller.close();
}
```

Output:

```text
Received: 1
Received: 2
Received: 3
```

Flutter style example:

```dart
class CounterBloc {
  final _controller = StreamController<int>();
  int _count = 0;

  Stream<int> get stream => _controller.stream;

  void increment() {
    _count++;
    _controller.add(_count);
  }

  void dispose() {
    _controller.close();
  }
}
```

Important: `dispose()` me controller close karo, warna memory leak ho sakta hai.

## 12. StreamSubscription

`listen()` ek `StreamSubscription` return karta hai. Subscription se listening control hoti hai.

Controls:

- `pause()`
- `resume()`
- `cancel()`
- `onData()`
- `onError()`
- `onDone()`

```dart
import 'dart:async';

void main() async {
  final stream = Stream.periodic(
    const Duration(seconds: 1),
    (count) => count,
  );

  final subscription = stream.listen((value) {
    print(value);
  });

  await Future.delayed(const Duration(seconds: 3));
  subscription.pause();
  print("Paused");

  await Future.delayed(const Duration(seconds: 2));
  subscription.resume();
  print("Resumed");

  await Future.delayed(const Duration(seconds: 3));
  await subscription.cancel();
  print("Cancelled");
}
```

## 13. Types Of Streams

### 13.1 Single Subscription Stream

Is stream ko sirf ek listener listen kar sakta hai.

```dart
final stream = Stream.fromIterable([1, 2, 3]);

stream.listen((value) {
  print("Listener 1: $value");
});

// Second listener lagane par error aa sakta hai.
stream.listen((value) {
  print("Listener 2: $value");
});
```

Use cases:

- File reading
- HTTP response body
- One-to-one data flow

### 13.2 Broadcast Stream

Broadcast stream ko multiple listeners listen kar sakte hain.

```dart
import 'dart:async';

void main() {
  final controller = StreamController<int>.broadcast();

  controller.stream.listen((value) {
    print("Listener 1: $value");
  });

  controller.stream.listen((value) {
    print("Listener 2: $value");
  });

  controller.add(10);
  controller.add(20);

  controller.close();
}
```

Output:

```text
Listener 1: 10
Listener 2: 10
Listener 1: 20
Listener 2: 20
```

Use cases:

- App-wide events
- Button click events
- Multiple widgets listening to same source
- Firebase-like live updates

## 14. Stream Error Handling

```dart
Stream<int> numbers() async* {
  yield 1;
  throw Exception("Something failed");
}

void main() {
  numbers().listen(
    (value) {
      print(value);
    },
    onError: (error) {
      print("Error: $error");
    },
    onDone: () {
      print("Stream done");
    },
  );
}
```

## 15. Stream Transformations

`map()` value transform karta hai.

```dart
Stream.fromIterable([1, 2, 3])
    .map((value) => value * 10)
    .listen(print);
```

`where()` filter karta hai.

```dart
Stream.fromIterable([1, 2, 3, 4])
    .where((value) => value.isEven)
    .listen(print);
```

`asyncMap()` async transformation ke liye.

```dart
Stream.fromIterable([1, 2, 3])
    .asyncMap((value) async {
      await Future.delayed(const Duration(milliseconds: 500));
      return value * 2;
    })
    .listen(print);
```

## 16. Future vs Stream vs Isolate

| Concept | Kab use kare | Example |
|---|---|---|
| Future | Ek async result | API call, DB read |
| Stream | Multiple async values | Chat, Firebase snapshots |
| Isolate | Heavy CPU work | Image compression, huge JSON parsing |

Important: API call ke liye generally isolate nahi chahiye. API already async hoti hai. Isolate CPU-heavy work ke liye hai.

## 17. Isolate Kya Hai?

Isolate ek independent worker hai jiske paas apni memory aur apna event loop hota hai.

```text
Isolate = separate worker
```

Technical point:

```text
Thread != Isolate
```

Threads often memory share karte hain. Dart isolates memory share nahi karte.

```text
Main Isolate       Worker Isolate
Memory A           Memory B
Event Loop A       Event Loop B
Queue A            Queue B
```

Sabse important rule:

```text
Isolates memory share nahi karte.
Communication message passing se hoti hai.
```

## 18. Dart Ne Isolate Kyun Banaya?

Normal threading me problems hoti hain:

- Race condition
- Deadlock
- Data corruption
- Shared memory bugs

Dart ka solution:

```text
Memory share hi mat karo.
Messages pass karo.
```

## 19. ReceivePort and SendPort

```text
ReceivePort = mailbox / inbox
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

Output:

```text
Hello
```

## 20. Isolate.spawn()

`Isolate.spawn()` naya isolate create karta hai.

```dart
Isolate.spawn(functionName, message);
```

```dart
import 'dart:isolate';

void worker(String message) {
  print(message);
}

void main() {
  Isolate.spawn(worker, "Hello Worker");
}
```

Output:

```text
Hello Worker
```

## 21. Main Se Worker Ko Data Bhejna

```dart
import 'dart:isolate';

void worker(String data) {
  print(data);
}

void main() {
  Isolate.spawn(worker, "User Data");
}
```

## 22. Worker Se Main Tak Result Wapas

Worker ko main ka `SendPort` do, taki worker result bhej sake.

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

Output:

```text
Data From Worker
```

Flow:

```text
Main: ReceivePort banata hai
Main: receivePort.sendPort worker ko deta hai
Worker: sendPort.send(result)
Main: receivePort.listen(result receive karta hai)
```

## 23. Isolate.spawn() Me Sirf Ek Message Ja Sakta Hai

`Isolate.spawn(function, message)` me message ek hi object hota hai.

Multiple values bhejne ke 3 common methods:

1. List
2. Map
3. Custom Class

## 24. Method 1 - List

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

  await Isolate.spawn(
    calculate,
    [receivePort.sendPort, 100],
  );

  receivePort.listen((message) {
    print("Result = $message");
  });
}
```

Output:

```text
Result = 5050
```

Shortcut:

```text
data[0] = SendPort
data[1] = Number
```

Problem: readability kam.

## 25. Method 2 - Map

```dart
import 'dart:isolate';

void calculate(Map<String, dynamic> data) {
  final SendPort sendPort = data['sendPort'];
  final int number = data['number'];

  int sum = 0;
  for (int i = 0; i <= number; i++) {
    sum += i;
  }

  sendPort.send(sum);
}

void main() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(
    calculate,
    {
      'sendPort': receivePort.sendPort,
      'number': 100,
    },
  );

  receivePort.listen((message) {
    print("Result = $message");
  });
}
```

Benefit: readable. Problem: string key typo ka risk.

## 26. Method 3 - Custom Class

Production me ye clean aur type-safe approach hai.

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

  final data = IsolateData(
    sendPort: receivePort.sendPort,
    number: 100,
  );

  await Isolate.spawn(calculate, data);

  receivePort.listen((message) {
    print("Result = $message");
  });
}
```

Benefits:

- Type safe
- Readable
- IDE autocomplete
- Refactor easy
- Bugs kam

## 27. List vs Map vs Custom Class

| Method | Good for | Problem |
|---|---|---|
| List | Small quick examples | `data[0]`, `data[1]` confusing |
| Map | Readable examples | String key typo |
| Custom Class | Production code | Extra class code |

Interview answer: `Isolate.spawn()` sirf ek message leta hai. Multiple values bhejne ke liye List, Map, ya Custom Class me wrap karte hain.

## 28. compute()

Flutter me `compute()` helper function internally isolate use karta hai.

```text
compute()
|
|-- isolate create
|-- function run
|-- result return
|-- isolate kill
```

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

Output:

```text
5050
```

Use `compute()` for:

- One-time heavy JSON parsing
- One-time calculation
- Image decode/compress task
- Data transformation

Avoid `compute()` for:

- API call only
- Small calculation
- Normal CRUD
- Long-running worker

Golden rule:

```text
compute() = temporary worker
Isolate.spawn() = long-running worker
```

## 29. Isolate Lifecycle

Lifecycle:

```text
Create
Initialize
Running
Waiting
Running again
Killed
```

Stages:

1. Spawn: new isolate create.
2. Initialize: memory, event loop, queue setup.
3. Running: code execute.
4. Waiting: message ka wait.
5. Resume: new message aaya, phir run.
6. Kill: memory/event loop cleanup.

## 30. Isolate.kill()

```dart
isolate.kill(priority: Isolate.immediate);
```

Common priorities:

- `Isolate.beforeNextEvent`: current event complete hone do, fir kill.
- `Isolate.immediate`: jaldi se jaldi kill.

Example:

```dart
import 'dart:isolate';

void worker(SendPort sendPort) {
  int count = 0;
  while (true) {
    count++;
    if (count % 100000000 == 0) {
      sendPort.send(count);
    }
  }
}

void main() async {
  final receivePort = ReceivePort();
  final isolate = await Isolate.spawn(worker, receivePort.sendPort);

  receivePort.listen(print);

  await Future.delayed(const Duration(seconds: 2));
  isolate.kill(priority: Isolate.immediate);
  receivePort.close();
}
```

Production rule:

- Long-running isolate ko end par kill karo.
- ReceivePort close karo.
- StreamSubscription cancel karo.

## 31. Error Handling In Isolate

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

## 32. Two-Way Communication

Real projects me main aur worker dono side communication karte hain.

```text
Main Isolate
|-- ReceivePort
|-- SendPort to worker

Worker Isolate
|-- ReceivePort
|-- SendPort to main
```

Use cases:

- Chat engine
- Audio processing
- Long-running parser
- Background calculation service

## 33. TransferableTypedData

Normal isolate message passing me data copy hota hai. Large binary data ke liye ye expensive ho sakta hai.

Problem:

```text
Main isolate: 100 MB image
Send to worker
Copy happens
Worker isolate: 100 MB image
Total memory: about 200 MB
```

Solution:

```text
TransferableTypedData = copy nahi, ownership transfer
```

Example:

```dart
import 'dart:isolate';
import 'dart:typed_data';

void sendLargeBytes(SendPort sendPort, Uint8List bytes) {
  final transferable = TransferableTypedData.fromList([bytes]);
  sendPort.send(transferable);
}

void receiveLargeBytes(TransferableTypedData data) {
  final bytes = data.materialize().asUint8List();
  print(bytes.length);
}
```

`materialize()` ka matlab: transferred packet ko open karke usable bytes banana.

Use for:

- Large images
- Video frames
- Huge byte arrays
- ML tensors
- Audio buffers

Small int/string/map ke liye iski zarurat nahi.

## 34. Worker Pool

Agar 100 heavy tasks hain, har task ke liye new isolate spawn karna expensive hoga.

Wrong:

```text
Task 1 -> create isolate -> destroy
Task 2 -> create isolate -> destroy
...
Task 100 -> create isolate -> destroy
```

Better:

```text
Create 4 workers
Reuse them for 100 tasks
```

Worker Pool = reusable isolates ka group.

Use cases:

- 100 images compress karni hain
- OCR on many images
- Video frame processing
- ML batch processing
- Massive JSON transformations

Benefits:

- Spawn cost kam
- Memory controlled
- Throughput better
- CPU use balanced

Pool size usually CPU core count ke aas-paas hota hai. Too many workers performance down bhi kar sakte hain.

## 35. Kab Kya Use Karna Hai?

| Situation | Best tool |
|---|---|
| API call | Future/async-await |
| Firebase live updates | Stream |
| Chat messages | Stream |
| Button clicks/app events | Broadcast Stream |
| One-time heavy JSON parsing | compute() |
| Long-running background worker | Isolate.spawn() |
| Large image/video bytes transfer | TransferableTypedData |
| Many repeated heavy tasks | Worker Pool |

## 36. Common Mistakes

1. API call ke liye isolate use karna. API already async hoti hai.
2. Microtask me heavy calculation karna. App hang ho sakti hai.
3. StreamController close na karna. Memory leak ho sakta hai.
4. StreamSubscription cancel na karna.
5. Har small task ke liye isolate spawn karna. Spawn cost zyada ho sakta hai.
6. Large bytes normal send karna. `TransferableTypedData` better hai.

## 37. Interview Q&A

Q1. Event Loop kya hai?

Answer: Dart ka scheduler jo microtask queue aur event queue se tasks run karata hai.

Q2. Microtask Queue aur Event Queue me priority kiski hoti hai?

Answer: Microtask Queue ki priority high hoti hai.

Q3. Future(() {}) kahan jata hai?

Answer: Event Queue me.

Q4. scheduleMicrotask kahan jata hai?

Answer: Microtask Queue me.

Q5. Future aur Stream me difference?

Answer: Future ek value/error deta hai. Stream multiple values/errors time ke sath emit karta hai.

Q6. StreamController kya hai?

Answer: Stream ko manually control karne ka object. Isse data add, error add, close aur stream expose kar sakte hain.

Q7. StreamSubscription kya hai?

Answer: Stream listener ka control handle. Isse pause, resume, cancel kar sakte hain.

Q8. Single Subscription Stream kya hai?

Answer: Jise sirf ek listener listen kar sakta hai.

Q9. Broadcast Stream kya hai?

Answer: Jise multiple listeners listen kar sakte hain.

Q10. Isolate kya hai?

Answer: Independent worker jiske paas own memory aur own event loop hota hai.

Q11. Isolates memory share karte hain?

Answer: Nahi. Communication message passing se hoti hai.

Q12. ReceivePort kya hai?

Answer: Message receive karne ka mailbox.

Q13. SendPort kya hai?

Answer: Message bhejne ka address.

Q14. Isolate.spawn() me multiple arguments kaise pass karoge?

Answer: List, Map, ya Custom Class me wrap karke.

Q15. compute() aur Isolate.spawn() me difference?

Answer: `compute()` short-life one-time task ke liye. `Isolate.spawn()` long-running/custom communication worker ke liye.

Q16. TransferableTypedData kyun use karte hain?

Answer: Large binary data ko copy kiye bina ownership transfer karne ke liye.

Q17. Worker Pool kya hai?

Answer: Reusable isolates ka group jo multiple heavy tasks process karta hai.

## 38. Final Revision Sheet

```text
Event Loop = task scheduler
Microtask Queue = high priority
Event Queue = normal async tasks
Future = single async result
Stream = multiple async results
StreamController = stream remote control
StreamSubscription = listener control
ReceivePort = mailbox
SendPort = mailbox address
Isolate = independent worker
Isolate.spawn = new worker create
compute = simple one-time isolate helper
TransferableTypedData = large bytes ownership transfer
Worker Pool = reusable workers
```

## 39. Best Learning Order

1. Synchronous Dart
2. Event Loop
3. Microtask Queue
4. Event Queue
5. Future
6. async/await
7. Stream
8. StreamController
9. StreamSubscription
10. Types of Streams
11. Isolate basics
12. SendPort and ReceivePort
13. Isolate.spawn()
14. Worker se main result return
15. List/Map/Custom class message passing
16. compute()
17. Isolate lifecycle
18. Isolate.kill()
19. Error handling
20. Two-way communication
21. TransferableTypedData
22. Worker Pool
23. Production architecture

## 40. One Complete Mental Model

```text
UI work
|
Main Isolate

Async waiting work
|
Future / Stream

Repeated async values
|
Stream / StreamController

Heavy CPU work
|
Isolate / compute

Many heavy repeated tasks
|
Worker Pool

Huge binary data between isolates
|
TransferableTypedData
```

Is model ko yaad rakho. Dart async ka major confusion clear ho jata hai.
