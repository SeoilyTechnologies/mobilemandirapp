# Dart Async, Future, Stream, Isolate - 0 To Advanced Masterclass

Ye notes aise banaye gaye hain ki concept mind me fit ho jaye. Har topic me simple meaning, mind picture, golden rule, normal example, model class example, production use case, mistakes, aur interview angle diya gaya hai.

## 0. Learning Roadmap

Is order me padho:

```text
Sync Code
  -> Event Loop
  -> Microtask Queue
  -> Event Queue
  -> Future
  -> async / await
  -> Stream
  -> StreamController
  -> StreamSubscription
  -> Single Subscription Stream
  -> Broadcast Stream
  -> Model Class With Stream
  -> Isolate
  -> SendPort / ReceivePort
  -> compute()
  -> TransferableTypedData
  -> Worker Pool
```

GOLDEN RULE:

```text
Future tab use karo jab ek result chahiye.
Stream tab use karo jab baar-baar result chahiye.
Isolate tab use karo jab CPU-heavy kaam background me karna ho.
```

## 1. Sync Code Kya Hota Hai?

Sync code line-by-line run hota hai. Ek line complete, phir next line.

```dart
void main() {
  print("A");
  print("B");
  print("C");
}
```

Output:

```text
A
B
C
```

Mind Picture:

```text
Line 1 -> Line 2 -> Line 3
```

Problem tab aati hai jab koi line heavy ho.

```dart
void main() {
  print("Start");

  for (int i = 0; i < 10000000000; i++) {
    // heavy work
  }

  print("End");
}
```

GOLDEN RULE:

```text
Sync heavy work UI ko block kar sakta hai.
```

## 2. Flutter UI Freeze Problem

Flutter UI main isolate par chalti hai. Agar main isolate busy ho gaya, UI freeze.

```dart
ElevatedButton(
  onPressed: () {
    for (int i = 0; i < 10000000000; i++) {
      // heavy calculation
    }
  },
  child: const Text("Start"),
)
```

Result:

- Scroll ruk sakta hai
- Animation ruk sakti hai
- Button tap response delay ho sakta hai
- App hang jaisi feel ho sakti hai

Mind Picture:

```text
Main Isolate
  -> UI
  -> Animation
  -> Scroll
  -> Tap
  -> Heavy calculation

Heavy calculation ne sabko wait karwa diya.
```

## 3. Event Loop Kya Hai?

Event Loop Dart ka manager hai jo decide karta hai kaunsa async task kab run hoga.

Mind Picture:

```text
Main Code
   |
   v
Call Stack
   |
   v
Event Loop
   |
   |-- Microtask Queue  (VIP line)
   |-- Event Queue      (normal line)
```

GOLDEN RULE:

```text
Main code pehle complete hota hai.
Uske baad microtask queue.
Uske baad event queue.
```

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

Step:

1. `A` print.
2. `Future` event queue me gaya.
3. `C` print.
4. Main code complete.
5. Event loop event queue se `B` run karta hai.

## 4. Microtask Queue

Microtask Queue high priority queue hai.

```dart
import 'dart:async';

void main() {
  print("A");

  scheduleMicrotask(() {
    print("Microtask");
  });

  print("C");
}
```

Output:

```text
A
C
Microtask
```

Mind Picture:

```text
Microtask Queue = VIP line
Event Queue     = Normal line

VIP empty hone ke baad hi normal line chalegi.
```

## 5. Microtask vs Future

```dart
import 'dart:async';

void main() {
  print("A");

  Future(() {
    print("Future");
  });

  scheduleMicrotask(() {
    print("Microtask");
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

GOLDEN RULE:

```text
Microtask Future se pehle chalega.
```

Danger:

```dart
import 'dart:async';

void main() {
  void repeat() {
    scheduleMicrotask(() {
      print("Again");
      repeat();
    });
  }

  repeat();
}
```

Ye event queue ko kabhi chance nahi dega.

Production Rule:

```text
Microtask me heavy work mat karo.
Microtask sirf very small immediate work ke liye hai.
```

## 6. Event Queue Me Kya Jata Hai?

Generally ye tasks event queue me aate hain:

- `Future(() {})`
- `Future.delayed(...)`
- `Timer(...)`
- Button tap callbacks
- Network response callbacks
- File read completion

Example:

```dart
Future.delayed(const Duration(seconds: 1), () {
  print("After 1 second");
});
```

GOLDEN RULE:

```text
Future waiting ka tool hai, parallel CPU worker nahi.
```

## 7. Future Kya Hai?

Future ek promise hai ki baad me ek value ya error milega.

Mind Picture:

```text
Restaurant order
  -> token mila
  -> food baad me milega

Future
  -> object abhi mila
  -> result baad me milega
```

Example:

```dart
Future<String> getUserName() async {
  return "Aman";
}

void main() async {
  final name = await getUserName();
  print(name);
}
```

Output:

```text
Aman
```

Future states:

```text
Uncompleted
Completed with value
Completed with error
```

## 8. Future Constructor

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

GOLDEN RULE:

```text
Future(() {}) event queue me jata hai.
```

## 9. Future.delayed()

Delay ke baad task run hota hai.

```dart
void main() {
  print("Start");

  Future.delayed(const Duration(seconds: 2), () {
    print("After 2 seconds");
  });

  print("End");
}
```

Output:

```text
Start
End
After 2 seconds
```

## 10. Future.value()

Already completed value Future ke form me dena ho.

```dart
Future<int> getNumber() {
  return Future.value(10);
}
```

Use case:

- Interface Future expect karta ho
- Data already available ho

## 11. Future.error()

Already failed Future create karna ho.

```dart
Future<String> getData() {
  return Future.error("Data failed");
}
```

## 12. Future.sync()

Sync code ko Future me convert karta hai aur error ko Future error bana deta hai.

```dart
Future<int> calculate() {
  return Future.sync(() {
    return 10 * 2;
  });
}
```

Benefit:

```text
Return value bhi Future me.
Thrown error bhi Future error me.
```

## 13. Future.microtask()

Microtask queue me Future schedule karta hai.

```dart
void main() {
  print("A");

  Future.microtask(() {
    print("Microtask Future");
  });

  Future(() {
    print("Normal Future");
  });

  print("C");
}
```

Output:

```text
A
C
Microtask Future
Normal Future
```

## 14. then()

Future complete hone ke baad `then()` run hota hai.

```dart
void main() {
  Future(() {
    return 100;
  }).then((value) {
    print(value);
  });
}
```

Output:

```text
100
```

Mind Picture:

```text
Future ka kaam complete
  -> then callback run
```

## 15. catchError()

Future error handle karne ke liye.

```dart
void main() {
  Future(() {
    throw Exception("Failed");
  }).catchError((error) {
    print("Error: $error");
  });
}
```

## 16. whenComplete()

Success ho ya error, end me run hota hai.

```dart
void main() {
  Future(() {
    return "Done";
  }).then((value) {
    print(value);
  }).whenComplete(() {
    print("Cleanup");
  });
}
```

Output:

```text
Done
Cleanup
```

## 17. async and await

`async` function ko Future-returning function banata hai. `await` us Future ka wait karta hai.

```dart
Future<String> fetchUser() async {
  await Future.delayed(const Duration(seconds: 1));
  return "User loaded";
}

void main() async {
  print("Start");
  final user = await fetchUser();
  print(user);
  print("End");
}
```

Output:

```text
Start
User loaded
End
```

GOLDEN RULE:

```text
await UI ko block nahi karta.
await sirf current async function ko pause karta hai.
```

## 18. await Internally Kaise Socho?

```dart
final data = await fetchData();
print(data);
```

Mind Picture:

```text
fetchData start
  -> Future return
  -> current async function pause
  -> event loop free
  -> Future complete
  -> async function resume
  -> print(data)
```

Important:

```text
await ka matlab thread ko rokna nahi.
await ka matlab function ko baad me resume karna.
```

## 19. async/await Error Handling

```dart
Future<String> fetchData() async {
  throw Exception("Network failed");
}

void main() async {
  try {
    final data = await fetchData();
    print(data);
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Cleanup");
  }
}
```

GOLDEN RULE:

```text
async/await ke saath try/catch use karo.
```

## 20. Future.wait()

Multiple Futures ko parallel wait karna ho.

```dart
Future<String> getUser() async => "User";
Future<String> getPosts() async => "Posts";
Future<String> getComments() async => "Comments";

void main() async {
  final result = await Future.wait([
    getUser(),
    getPosts(),
    getComments(),
  ]);

  print(result);
}
```

Output:

```text
[User, Posts, Comments]
```

Use case:

```text
3 APIs independent hain.
Ek ke baad ek wait karna slow hoga.
Future.wait se parallel wait karo.
```

## 21. Future.timeout()

Future bohot late ho to timeout.

```dart
void main() async {
  try {
    final result = await Future.delayed(
      const Duration(seconds: 5),
      () => "Data",
    ).timeout(const Duration(seconds: 2));

    print(result);
  } catch (e) {
    print("Timeout or error: $e");
  }
}
```

## 22. Future Common Mistakes

Mistake 1:

```dart
final data = fetchData(); // Future object
print(data);
```

Correct:

```dart
final data = await fetchData();
print(data);
```

Mistake 2:

```dart
// Heavy CPU work ko Future me daal diya.
Future(() {
  for (int i = 0; i < 10000000000; i++) {}
});
```

Future event queue me jayega, lekin same isolate par heavy work run hoga. UI still block ho sakti hai.

Correct for CPU-heavy:

```text
Use isolate or compute().
```

## 23. Stream Kya Hai?

Stream multiple values time ke sath emit karta hai.

Mind Picture:

```text
Future = single parcel
Stream = water pipe

Pipe se baar-baar water drops aate rahte hain.
Stream se baar-baar data events aate rahte hain.
```

Examples:

- Chat messages
- Location updates
- Firebase snapshots
- Timer ticks
- Button click events
- Download progress

## 24. Stream Basic Example

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

GOLDEN RULE:

```text
yield ka matlab stream me value bhejna.
```

## 25. async* and yield

`async*` stream function banata hai.

```dart
Stream<String> messageStream() async* {
  yield "Hi";
  await Future.delayed(const Duration(seconds: 1));
  yield "How are you?";
  await Future.delayed(const Duration(seconds: 1));
  yield "Bye";
}

void main() {
  messageStream().listen(print);
}
```

Output:

```text
Hi
How are you?
Bye
```

## 26. Stream.listen()

Stream ko receive karne ke liye `listen()` use hota hai.

```dart
void main() {
  final stream = Stream.fromIterable([10, 20, 30]);

  stream.listen((value) {
    print("Value: $value");
  });
}
```

Output:

```text
Value: 10
Value: 20
Value: 30
```

## 27. Stream Error and Done

```dart
Stream<int> numberStream() async* {
  yield 1;
  yield 2;
  throw Exception("Something went wrong");
}

void main() {
  numberStream().listen(
    (value) {
      print("Data: $value");
    },
    onError: (error) {
      print("Error: $error");
    },
    onDone: () {
      print("Stream finished");
    },
  );
}
```

Output:

```text
Data: 1
Data: 2
Error: Exception: Something went wrong
Stream finished
```

## 28. StreamController

StreamController stream ko manually control karta hai.

Mind Picture:

```text
StreamController = remote control

add()      -> data bhejo
addError() -> error bhejo
close()    -> stream band
stream     -> listener ko stream do
```

Example:

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

GOLDEN RULE:

```text
StreamController khola hai to close bhi karo.
```

## 29. StreamSubscription

`listen()` ek StreamSubscription return karta hai.

Isse control kar sakte ho:

- pause
- resume
- cancel

```dart
import 'dart:async';

void main() async {
  final stream = Stream.periodic(
    const Duration(seconds: 1),
    (count) => count,
  );

  final subscription = stream.listen((value) {
    print("Tick: $value");
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

GOLDEN RULE:

```text
Widget dispose ho to subscription cancel karo.
```

## 30. Types Of Streams

Dart me streams ke 2 important types:

```text
1. Single Subscription Stream
2. Broadcast Stream
```

Easy meaning:

```text
Single Subscription = ek listener
Broadcast = multiple listeners
```

## 31. Single Subscription Stream - Normal Example

Single subscription stream ko sirf ek listener listen kar sakta hai.

```dart
void main() {
  final stream = Stream.fromIterable([1, 2, 3]);

  stream.listen((value) {
    print("Listener 1: $value");
  });

  // Second listen karoge to error aa sakta hai.
  // stream.listen((value) {
  //   print("Listener 2: $value");
  // });
}
```

Output:

```text
Listener 1: 1
Listener 1: 2
Listener 1: 3
```

Use cases:

- File reading
- HTTP response body
- One-to-one data flow

GOLDEN RULE:

```text
Single subscription stream ka data ek hi listener ke liye hota hai.
```

## 32. Single Subscription Stream - Model Class Example

Model:

```dart
class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    return "User(id: $id, name: $name)";
  }
}
```

Stream:

```dart
Stream<User> userStream() async* {
  yield User(id: 1, name: "Aman");
  await Future.delayed(const Duration(seconds: 1));
  yield User(id: 2, name: "Ravi");
  await Future.delayed(const Duration(seconds: 1));
  yield User(id: 3, name: "Neha");
}

void main() {
  userStream().listen((user) {
    print(user);
  });
}
```

Output:

```text
User(id: 1, name: Aman)
User(id: 2, name: Ravi)
User(id: 3, name: Neha)
```

Mind Picture:

```text
User 1 -> User 2 -> User 3
Ek hi listener receive kar raha hai.
```

## 33. Broadcast Stream - Normal Example

Broadcast stream multiple listeners allow karta hai.

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

- Button click events
- App-wide events
- Notifications
- Multiple widgets same stream sun rahe ho

GOLDEN RULE:

```text
Broadcast stream me event sab active listeners ko milta hai.
```

## 34. Broadcast Stream - Model Class Example

Model:

```dart
class NotificationMessage {
  final String title;
  final String body;

  NotificationMessage({
    required this.title,
    required this.body,
  });

  @override
  String toString() {
    return "$title - $body";
  }
}
```

Broadcast controller:

```dart
import 'dart:async';

class NotificationService {
  final _controller = StreamController<NotificationMessage>.broadcast();

  Stream<NotificationMessage> get stream => _controller.stream;

  void send(NotificationMessage message) {
    _controller.add(message);
  }

  void dispose() {
    _controller.close();
  }
}

void main() {
  final service = NotificationService();

  service.stream.listen((message) {
    print("Header widget: $message");
  });

  service.stream.listen((message) {
    print("Dialog widget: $message");
  });

  service.send(
    NotificationMessage(
      title: "Order",
      body: "Your order is ready",
    ),
  );

  service.dispose();
}
```

Output:

```text
Header widget: Order - Your order is ready
Dialog widget: Order - Your order is ready
```

## 35. StreamController With Model Class - Product Example

Model:

```dart
class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });

  @override
  String toString() {
    return "$name: Rs $price";
  }
}
```

Controller:

```dart
import 'dart:async';

class ProductBloc {
  final _controller = StreamController<List<Product>>();

  Stream<List<Product>> get productsStream => _controller.stream;

  void loadProducts() {
    final products = [
      Product(id: 1, name: "Phone", price: 20000),
      Product(id: 2, name: "Laptop", price: 60000),
      Product(id: 3, name: "Watch", price: 3000),
    ];

    _controller.add(products);
  }

  void dispose() {
    _controller.close();
  }
}

void main() {
  final bloc = ProductBloc();

  bloc.productsStream.listen((products) {
    for (final product in products) {
      print(product);
    }
  });

  bloc.loadProducts();
  bloc.dispose();
}
```

Output:

```text
Phone: Rs 20000.0
Laptop: Rs 60000.0
Watch: Rs 3000.0
```

## 36. Flutter StreamBuilder Example

```dart
StreamBuilder<int>(
  stream: counterStream,
  initialData: 0,
  builder: (context, snapshot) {
    if (snapshot.hasError) {
      return Text("Error: ${snapshot.error}");
    }

    if (!snapshot.hasData) {
      return const CircularProgressIndicator();
    }

    return Text("Count: ${snapshot.data}");
  },
)
```

GOLDEN RULE:

```text
StreamBuilder UI ko stream ke latest data ke according rebuild karta hai.
```

## 37. Stream Transformations

`map()`:

```dart
Stream.fromIterable([1, 2, 3])
    .map((value) => value * 10)
    .listen(print);
```

Output:

```text
10
20
30
```

`where()`:

```dart
Stream.fromIterable([1, 2, 3, 4])
    .where((value) => value.isEven)
    .listen(print);
```

Output:

```text
2
4
```

`asyncMap()`:

```dart
Stream.fromIterable([1, 2, 3])
    .asyncMap((value) async {
      await Future.delayed(const Duration(milliseconds: 300));
      return value * 2;
    })
    .listen(print);
```

## 38. Stream Practical Use - Search Debounce Mind Model

Typing stream:

```text
a
ap
app
appl
apple
```

Real app me har character par API call nahi karni chahiye. Debounce ka idea:

```text
User ruk gaya 500ms
  -> tab API call karo
```

Without RxDart custom debounce banana possible hai, lekin production me log often RxDart operators use karte hain.

GOLDEN RULE:

```text
Stream user events ke flow ko model karne ke liye powerful hai.
```

## 39. Stream Common Mistakes

Mistake 1: Controller close nahi kiya.

```text
Memory leak risk.
```

Mistake 2: Single subscription stream ko multiple listeners se listen kiya.

```text
Bad state error aa sakta hai.
```

Mistake 3: Broadcast stream me listener late attach hua.

```text
Late listener old events miss kar sakta hai.
```

Mistake 4: Stream ko Future jaisa treat karna.

```text
Future ek result.
Stream multiple results.
```

## 40. Future vs Stream

| Feature | Future | Stream |
|---|---|---|
| Values | Single | Multiple |
| Time | Once | Over time |
| Example | API response | Chat messages |
| Listen | await / then | listen / StreamBuilder |
| Complete | Value/error | Data/error/done |

Mind Hook:

```text
Future = single photo
Stream = video
```

## 41. Isolate Kya Hai?

Isolate independent worker hai jiske paas own memory aur own event loop hota hai.

Mind Picture:

```text
Main Isolate
  -> UI
  -> Event Loop
  -> Memory

Worker Isolate
  -> Heavy Work
  -> Event Loop
  -> Memory
```

GOLDEN RULE:

```text
Isolates memory share nahi karte.
Message passing se baat karte hain.
```

## 42. Thread vs Isolate

```text
Thread:
  Thread A and Thread B same memory share kar sakte hain.

Isolate:
  Isolate A memory alag.
  Isolate B memory alag.
```

Why good?

- Race condition kam
- Deadlock risk kam
- Shared memory bugs kam

## 43. ReceivePort and SendPort

```text
ReceivePort = mailbox
SendPort = mailbox ka address
```

Example:

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

## 44. Isolate.spawn()

```dart
Isolate.spawn(functionName, message);
```

Example:

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

## 45. Worker Se Main Tak Result

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

Mind Flow:

```text
Main creates ReceivePort
Main gives SendPort to Worker
Worker sends result
Main receives result
```

## 46. Passing Multiple Values To Isolate

`Isolate.spawn()` sirf ek message leta hai.

Multiple values bhejne ke 3 tarike:

```text
List
Map
Custom Class
```

## 47. List Method

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

Problem:

```text
data[0] kya tha?
data[1] kya tha?
Yaad rakhna padta hai.
```

## 48. Map Method

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

  await Isolate.spawn(
    calculate,
    {
      "sendPort": receivePort.sendPort,
      "number": 100,
    },
  );

  receivePort.listen((message) {
    print("Result = $message");
  });
}
```

Benefit:

```text
data["sendPort"] readable hai.
```

Problem:

```text
String typo runtime bug de sakta hai.
```

## 49. Custom Class Method

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

GOLDEN RULE:

```text
Production code me Custom Class sabse readable aur type-safe.
```

## 50. compute()

Flutter ka helper function jo one-time heavy task ke liye isolate use karta hai.

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

Mind Flow:

```text
compute()
  -> isolate create
  -> task run
  -> result return
  -> isolate close
```

GOLDEN RULE:

```text
compute = short life worker
Isolate.spawn = long life worker
```

## 51. Isolate Lifecycle

```text
Create
Initialize
Running
Waiting
Running again
Killed
```

## 52. Isolate.kill()

```dart
isolate.kill(priority: Isolate.immediate);
```

Production cleanup:

```text
isolate.kill()
receivePort.close()
subscription.cancel()
```

## 53. TransferableTypedData

Large binary data normal send karoge to copy ho sakta hai.

```text
100 MB image main isolate me
send to worker
copy
100 MB worker isolate me
Total approx 200 MB
```

Solution:

```text
TransferableTypedData = ownership transfer
```

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

Use for:

- Large images
- Video frames
- ML tensors
- Audio buffers

## 54. Worker Pool

100 tasks ke liye 100 isolates create karna expensive hai.

Bad:

```text
Task -> create isolate -> destroy
Task -> create isolate -> destroy
100 times
```

Good:

```text
Create 4 workers
Reuse for 100 tasks
```

Worker Pool = reusable isolates ka group.

Use for:

- Many image compress tasks
- OCR on many images
- Video processing
- ML batch processing

## 55. Complete Decision Table

| Situation | Use |
|---|---|
| One API result | Future |
| Multiple live values | Stream |
| UI rebuild with live values | StreamBuilder |
| Manual stream events | StreamController |
| Control listener | StreamSubscription |
| One listener only | Single Subscription Stream |
| Multiple listeners | Broadcast Stream |
| One-time heavy CPU task | compute() |
| Long-running background worker | Isolate.spawn() |
| Large bytes between isolates | TransferableTypedData |
| Many repeated heavy tasks | Worker Pool |

## 56. Final Mind Hooks

```text
Future = photo
Stream = video
Microtask = VIP queue
Event queue = normal queue
await = pause function, not thread
StreamController = stream remote
Subscription = listener remote
ReceivePort = inbox
SendPort = inbox address
compute = temporary worker
Isolate.spawn = custom worker
Worker Pool = worker team
```

## 57. Interview Questions

Q1. Dart Event Loop kya hai?

Answer: Event Loop Dart ka scheduler hai jo main code ke baad microtask queue aur event queue se tasks run karta hai.

Q2. Microtask Queue aur Event Queue me priority kiski hai?

Answer: Microtask Queue ki priority high hoti hai. Event queue tab chalegi jab microtask queue empty ho.

Q3. Future(() {}) kahan schedule hota hai?

Answer: Event Queue me.

Q4. scheduleMicrotask kahan schedule hota hai?

Answer: Microtask Queue me.

Q5. await kya thread block karta hai?

Answer: Nahi. await current async function ko pause karta hai aur event loop ko free rakhta hai.

Q6. Future aur Stream me difference?

Answer: Future single value/error deta hai. Stream multiple values/errors time ke sath emit karta hai.

Q7. StreamController kya hai?

Answer: Stream ko manually control karne ka object. Isse add, addError, close aur stream expose kar sakte hain.

Q8. StreamSubscription kya hai?

Answer: listen() se milne wala control object jisse pause, resume, cancel kar sakte hain.

Q9. Single Subscription Stream kya hai?

Answer: Aisi stream jise sirf ek listener listen kar sakta hai.

Q10. Broadcast Stream kya hai?

Answer: Aisi stream jise multiple listeners listen kar sakte hain.

Q11. Broadcast stream me late listener old events receive karta hai?

Answer: Usually nahi. Broadcast stream live events ke liye hoti hai; late listener old events miss kar sakta hai.

Q12. StreamBuilder kya karta hai?

Answer: Stream ke latest snapshot ke according UI rebuild karta hai.

Q13. Isolate kya hai?

Answer: Independent worker jiske paas apni memory aur apna event loop hota hai.

Q14. Isolates memory share karte hain?

Answer: Nahi. Isolates message passing se communicate karte hain.

Q15. ReceivePort kya hai?

Answer: Message receive karne ka mailbox.

Q16. SendPort kya hai?

Answer: Message bhejne ke liye mailbox ka address.

Q17. Isolate.spawn() me multiple values kaise pass karoge?

Answer: List, Map, ya Custom Class me wrap karke.

Q18. List, Map, Custom Class me best production option?

Answer: Custom Class, kyunki readable aur type-safe hota hai.

Q19. compute() kab use karoge?

Answer: One-time heavy CPU task ke liye, jaise large JSON parsing ya image processing.

Q20. compute() aur Isolate.spawn() me difference?

Answer: compute temporary worker hai. Isolate.spawn custom/long-running worker ke liye hai.

Q21. API call ke liye isolate use karna chahiye?

Answer: Generally nahi. API call already async hoti hai. Isolate CPU-heavy parsing/processing ke liye use karo.

Q22. TransferableTypedData kyun use karte hain?

Answer: Large binary data ko copy kiye bina ownership transfer karne ke liye.

Q23. Worker Pool kya hai?

Answer: Reusable isolates ka group jo multiple heavy tasks process karta hai.

Q24. Microtask me heavy calculation kyun nahi karni chahiye?

Answer: Microtask queue high priority hai. Heavy/infinite microtasks event queue ko starve kar sakte hain.

Q25. StreamController close na karne se kya problem?

Answer: Memory leak aur unwanted active stream ka risk.

## 58. Final Revision

```text
0 se advanced Dart async ka core:

Event Loop samjho.
Microtask vs Event Queue samjho.
Future ek result ke liye.
async/await readable Future code ke liye.
Stream multiple results ke liye.
StreamController manual events ke liye.
StreamSubscription listener control ke liye.
Single stream ek listener ke liye.
Broadcast stream multiple listeners ke liye.
Isolate heavy CPU work ke liye.
compute one-time worker ke liye.
TransferableTypedData large bytes ke liye.
Worker Pool repeated heavy tasks ke liye.
```

Ye complete package agar ache se samajh liya, to Dart/Flutter async ka strong foundation ban jayega.
