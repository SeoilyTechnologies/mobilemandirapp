from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[1]
NOTES_DIR = ROOT / "study_notes" / "separate_pdfs"
PDF_DIR = ROOT / "output" / "pdf" / "separate_pdfs"
GENERATOR = ROOT / "scripts" / "generate_study_notes_pdf.py"
PYTHON = "/Users/apple/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3"


def code(text):
    return f"```dart\n{text.strip()}\n```"


def text_block(text):
    return f"```text\n{text.strip()}\n```"


def table(headers, rows):
    out = ["| " + " | ".join(headers) + " |"]
    out.append("|" + "|".join(["---"] * len(headers)) + "|")
    for row in rows:
        out.append("| " + " | ".join(row) + " |")
    return "\n".join(out)


def interview(items):
    lines = ["## Interview Questions And Answers"]
    for index, (q, a) in enumerate(items, 1):
        lines.append(f"\nQ{index}. {q}\n\nAnswer: {a}")
    return "\n".join(lines)


def async_notes():
    parts = [
        "# PDF 1 - Asynchronous Programming: Future, async-await, Future.wait",
        "Ye notes Dart/Flutter asynchronous programming ko 0 se advanced level tak explain karte hain. Goal ye hai ki Future aur async-await mind me permanently fit ho jaye.",
        "## Roadmap",
        text_block("""
Synchronous code
  -> Event loop mental model
  -> Future
  -> Future constructors
  -> then/catchError/whenComplete
  -> async-await
  -> Future.wait
  -> Future.timeout
  -> Error handling
  -> Production patterns
"""),
        "## 1. Synchronous vs Asynchronous Code",
        "Synchronous code line-by-line run hota hai. Ek line complete, phir next line. Asynchronous code me kuch kaam baad me complete hota hai, aur tab callback/result milta hai.",
        code("""
void main() {
  print("A");
  print("B");
  print("C");
}
"""),
        "Output:",
        text_block("A\nB\nC"),
        "Asynchronous example:",
        code("""
void main() {
  print("A");

  Future(() {
    print("B");
  });

  print("C");
}
"""),
        "Output:",
        text_block("A\nC\nB"),
        "GOLDEN NOTE:",
        text_block("""
Future ka callback immediately run nahi hota.
Pehle current sync code complete hota hai.
Fir event loop async task run karta hai.
"""),
        "## 2. Event Loop Quick Mental Model",
        text_block("""
Main code
  -> Call stack
  -> Microtask queue
  -> Event queue

Priority:
Main code first
Microtask second
Event queue third
"""),
        "## 3. Future Kya Hai?",
        "Future ek object hai jo batata hai ki result abhi nahi, baad me milega. Result value bhi ho sakta hai, error bhi.",
        text_block("""
Future = ek baar result
Stream = baar-baar result
"""),
        code("""
Future<String> fetchName() {
  return Future.value("Aman");
}

void main() async {
  final name = await fetchName();
  print(name);
}
"""),
        "Future ke states:",
        table(["State", "Meaning"], [
            ["Uncompleted", "Kaam chal raha hai"],
            ["Completed with value", "Result mil gaya"],
            ["Completed with error", "Error aa gaya"],
        ]),
        "## 4. Future() Constructor",
        code("""
void main() {
  print("Start");

  Future(() {
    print("Inside Future");
  });

  print("End");
}
"""),
        "Output:",
        text_block("Start\nEnd\nInside Future"),
        "GOLDEN NOTE:",
        text_block("Future(() {}) event queue me schedule hota hai."),
        "## 5. Future.delayed()",
        code("""
void main() {
  print("Start");

  Future.delayed(const Duration(seconds: 2), () {
    print("After 2 seconds");
  });

  print("End");
}
"""),
        "Use case: splash delay, retry delay, fake loading, timer-like one-time wait.",
        "## 6. Future.value(), Future.error(), Future.sync(), Future.microtask()",
        table(["Future", "Meaning", "Use"], [
            ["Future.value(x)", "Already completed value", "Cached value return karni ho"],
            ["Future.error(e)", "Already failed Future", "Error flow test karna ho"],
            ["Future.sync(fn)", "Sync result/error ko Future me wrap", "Common API banana ho"],
            ["Future.microtask(fn)", "Microtask queue me Future", "Very small high-priority task"],
        ]),
        code("""
Future<int> valueExample() => Future.value(10);

Future<int> errorExample() => Future.error("Failed");

Future<int> syncExample() {
  return Future.sync(() {
    return 20;
  });
}

Future<void> microtaskExample() {
  return Future.microtask(() {
    print("Microtask future");
  });
}
"""),
        "## 7. then(), catchError(), whenComplete()",
        code("""
void main() {
  Future(() {
    return 100;
  }).then((value) {
    print("Value: $value");
  }).catchError((error) {
    print("Error: $error");
  }).whenComplete(() {
    print("Cleanup always");
  });
}
"""),
        "Chart:",
        text_block("""
Future starts
  -> success? then()
  -> error? catchError()
  -> both cases? whenComplete()
"""),
        "## 8. async-await",
        "`async` function ko Future-returning banata hai. `await` Future ke result ka wait karta hai, lekin thread block nahi karta.",
        code("""
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
"""),
        "Output:",
        text_block("Start\nUser loaded\nEnd"),
        "GOLDEN NOTE:",
        text_block("""
await thread ko block nahi karta.
await current async function ko pause karta hai.
Future complete hone par function resume hota hai.
"""),
        "## 9. await Internally Kaise Socho?",
        text_block("""
Line: final data = await fetchData();

fetchData start
  -> Future returned
  -> current function paused
  -> event loop free
  -> Future complete
  -> function resumes
  -> data variable me result
"""),
        "## 10. Error Handling in async-await",
        code("""
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
"""),
        "Production rule: async-await ke saath try/catch/finally clean aur readable hota hai.",
        "## 11. Future.wait",
        "Jab multiple independent futures ko ek saath wait karna ho, Future.wait use hota hai.",
        code("""
Future<String> getUser() async {
  await Future.delayed(const Duration(seconds: 1));
  return "User";
}

Future<String> getPosts() async {
  await Future.delayed(const Duration(seconds: 1));
  return "Posts";
}

Future<String> getComments() async {
  await Future.delayed(const Duration(seconds: 1));
  return "Comments";
}

void main() async {
  final result = await Future.wait([
    getUser(),
    getPosts(),
    getComments(),
  ]);

  print(result);
}
"""),
        "Output:",
        text_block("[User, Posts, Comments]"),
        "GOLDEN NOTE:",
        text_block("""
Independent tasks ko sequential await mat karo.
Future.wait se total time kam ho sakta hai.
"""),
        "## 12. Future.wait Error Handling",
        code("""
void main() async {
  try {
    final result = await Future.wait([
      Future.value("A"),
      Future.error("B failed"),
      Future.value("C"),
    ]);
    print(result);
  } catch (e) {
    print("Caught: $e");
  }
}
"""),
        "By default agar koi ek Future fail hota hai, Future.wait error complete ho sakta hai.",
        "## 13. Future.timeout",
        code("""
void main() async {
  try {
    final data = await Future.delayed(
      const Duration(seconds: 5),
      () => "Data",
    ).timeout(const Duration(seconds: 2));

    print(data);
  } catch (e) {
    print("Timeout: $e");
  }
}
"""),
        "Use case: slow API, payment status, location fetch.",
        "## 14. Common Mistakes",
        table(["Mistake", "Problem", "Correct Thinking"], [
            ["Future ko print karna", "Instance of Future dikhega", "await use karo"],
            ["Heavy CPU work Future me", "Same isolate block ho sakta hai", "compute/isolate use karo"],
            ["Sequential await for independent APIs", "Slow", "Future.wait"],
            ["try/catch na lagana", "Unhandled error", "try/catch/finally"],
            ["await bhool jana", "Unexpected output", "Future result await karo"],
        ]),
        interview([
            ("Future kya hai?", "Future ek async result ka placeholder hai jo baad me value ya error se complete hota hai."),
            ("async ka kya kaam hai?", "async function ko Future-returning function banata hai aur await allow karta hai."),
            ("await kya karta hai?", "await current async function ko pause karta hai jab tak Future complete na ho."),
            ("await thread block karta hai?", "Nahi, event loop free rehta hai."),
            ("Future.wait kab use karte hain?", "Multiple independent futures ko ek saath wait karne ke liye."),
            ("Future(() {}) kahan schedule hota hai?", "Event queue me."),
            ("Future.microtask kahan schedule hota hai?", "Microtask queue me."),
            ("Future.timeout ka use?", "Future ko max time limit dene ke liye."),
            ("Future me error kaise handle karte ho?", "then/catchError ya async-await ke saath try/catch."),
            ("API call ke liye isolate chahiye?", "Generally nahi; API async hoti hai. CPU-heavy parsing ke liye isolate useful hai."),
        ]),
    ]
    return "\n\n".join(parts)


def streams_notes():
    parts = [
        "# PDF 2 - Streams Complete Notes",
        "Ye PDF Streams ko 0 se advanced tak cover karta hai: Single Subscription Stream, Broadcast Stream, StreamController, StreamBuilder, normal examples, model class examples, mistakes, aur interview Q&A.",
        "## Roadmap",
        text_block("""
Future vs Stream
  -> Stream basics
  -> async* and yield
  -> listen()
  -> error/done
  -> Single Subscription Stream
  -> Broadcast Stream
  -> StreamController
  -> StreamSubscription
  -> StreamBuilder
  -> Model class streams
  -> Production mistakes
"""),
        "## 1. Stream Kya Hai?",
        "Stream multiple values time ke sath emit karta hai.",
        text_block("""
Future = ek baar result
Stream = baar-baar result

Future = photo
Stream = video
"""),
        "Examples: chat messages, Firebase snapshots, location updates, download progress, timer ticks, search input.",
        "## 2. Basic Stream Example",
        code("""
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
"""),
        "Output:",
        text_block("1\n2\n3"),
        "GOLDEN NOTE:",
        text_block("yield ka matlab stream me ek value emit karna."),
        "## 3. async* and yield",
        code("""
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
"""),
        "## 4. listen(), onError, onDone",
        code("""
Stream<int> numberStream() async* {
  yield 1;
  yield 2;
  throw Exception("Failed");
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
      print("Done");
    },
  );
}
"""),
        "## 5. StreamSubscription",
        code("""
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

  await Future.delayed(const Duration(seconds: 2));
  subscription.resume();

  await Future.delayed(const Duration(seconds: 3));
  await subscription.cancel();
}
"""),
        "GOLDEN NOTE:",
        text_block("listen() subscription deta hai. Subscription se pause/resume/cancel kar sakte ho."),
        "## 6. Single Subscription Stream",
        "Single subscription stream ko sirf ek listener listen kar sakta hai.",
        code("""
void main() {
  final stream = Stream.fromIterable([1, 2, 3]);

  stream.listen((value) {
    print("Listener 1: $value");
  });

  // Ye second listener error de sakta hai:
  // stream.listen((value) {
  //   print("Listener 2: $value");
  // });
}
"""),
        "Use cases: file read, HTTP response body, one-time data sequence.",
        "GOLDEN NOTE:",
        text_block("Single subscription stream = ek listener ke liye private pipe."),
        "## 7. Single Subscription Stream With Model Class",
        code("""
class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
  });

  @override
  String toString() => "User(id: $id, name: $name)";
}

Stream<User> userStream() async* {
  yield User(id: 1, name: "Aman");
  yield User(id: 2, name: "Ravi");
  yield User(id: 3, name: "Neha");
}

void main() {
  userStream().listen((user) {
    print(user);
  });
}
"""),
        "## 8. Broadcast Stream",
        "Broadcast stream multiple listeners allow karta hai.",
        code("""
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
"""),
        "Output:",
        text_block("Listener 1: 10\nListener 2: 10\nListener 1: 20\nListener 2: 20"),
        "GOLDEN NOTE:",
        text_block("Broadcast stream = live announcement. Active listeners ko event milta hai."),
        "## 9. Broadcast Stream With Model Class",
        code("""
import 'dart:async';

class NotificationMessage {
  final String title;
  final String body;

  NotificationMessage({
    required this.title,
    required this.body,
  });

  @override
  String toString() => "$title - $body";
}

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
    print("Header: $message");
  });

  service.stream.listen((message) {
    print("Dialog: $message");
  });

  service.send(
    NotificationMessage(
      title: "Order",
      body: "Your order is ready",
    ),
  );

  service.dispose();
}
"""),
        "## 10. StreamController",
        text_block("""
StreamController = stream ka remote

add(data)       -> data emit
addError(error) -> error emit
close()         -> stream close
stream          -> listeners ko stream
"""),
        code("""
import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.stream.listen(
    (value) => print("Data: $value"),
    onError: (error) => print("Error: $error"),
    onDone: () => print("Closed"),
  );

  controller.add("A");
  controller.addError("Something wrong");
  controller.add("B");
  controller.close();
}
"""),
        "## 11. StreamController With Model List",
        code("""
import 'dart:async';

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
  String toString() => "$name: Rs $price";
}

class ProductBloc {
  final _controller = StreamController<List<Product>>();

  Stream<List<Product>> get productsStream => _controller.stream;

  void loadProducts() {
    _controller.add([
      Product(id: 1, name: "Phone", price: 20000),
      Product(id: 2, name: "Laptop", price: 60000),
    ]);
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
"""),
        "## 12. StreamBuilder",
        "Flutter me StreamBuilder stream ke latest snapshot ke according UI rebuild karta hai.",
        code("""
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
"""),
        "Snapshot chart:",
        table(["Snapshot property", "Meaning"], [
            ["snapshot.data", "Latest data"],
            ["snapshot.error", "Error"],
            ["snapshot.hasData", "Data available?"],
            ["snapshot.hasError", "Error available?"],
            ["connectionState", "none/waiting/active/done"],
        ]),
        "## 13. Stream Transformations",
        code("""
void main() {
  Stream.fromIterable([1, 2, 3, 4, 5])
      .where((value) => value.isEven)
      .map((value) => value * 10)
      .listen(print);
}
"""),
        "Output:",
        text_block("20\n40"),
        "asyncMap example:",
        code("""
Stream.fromIterable([1, 2, 3])
    .asyncMap((value) async {
      await Future.delayed(const Duration(milliseconds: 300));
      return value * 2;
    })
    .listen(print);
"""),
        "## 14. Stream Types Chart",
        table(["Type", "Listeners", "Best For", "Important Point"], [
            ["Single Subscription", "One", "File/HTTP one-time sequence", "Second listener error de sakta hai"],
            ["Broadcast", "Many", "UI events/app events", "Late listener old event miss kar sakta hai"],
        ]),
        "## 15. Common Mistakes",
        table(["Mistake", "Problem", "Fix"], [
            ["Controller close nahi", "Memory leak", "dispose me close"],
            ["Subscription cancel nahi", "Old listener active", "dispose me cancel"],
            ["Single stream multiple listen", "Bad state error", "broadcast use karo"],
            ["Broadcast late listener", "Old event miss", "State store alag rakho"],
            ["Stream ko Future samajhna", "Wrong mental model", "Stream multiple values hai"],
        ]),
        interview([
            ("Stream kya hai?", "Stream time ke sath multiple async values emit karta hai."),
            ("Future vs Stream?", "Future single result, Stream multiple results."),
            ("async* kya karta hai?", "Stream-returning async generator function banata hai."),
            ("yield kya karta hai?", "Stream me value emit karta hai."),
            ("Single Subscription Stream kya hai?", "Jise sirf ek listener listen kar sakta hai."),
            ("Broadcast Stream kya hai?", "Jise multiple listeners listen kar sakte hain."),
            ("StreamController kya hai?", "Manual stream control object jisme add/addError/close hota hai."),
            ("StreamSubscription kya hai?", "Listener ka control object: pause/resume/cancel."),
            ("StreamBuilder kya karta hai?", "Stream snapshot ke according Flutter UI rebuild karta hai."),
            ("Broadcast stream late listener old data leta hai?", "Usually nahi, live event miss ho sakta hai."),
        ]),
    ]
    return "\n\n".join(parts)


def isolates_notes():
    parts = [
        "# PDF 3 - Isolates, Event Loop, Microtask Queue, compute()",
        "Ye PDF Isolates ko 0 se advanced tak explain karta hai: why needed, event loop, microtask queue, compute, SendPort/ReceivePort, lifecycle, error handling.",
        "## Roadmap",
        text_block("""
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
"""),
        "## 1. Isolate Kyun Chahiye?",
        "Flutter UI main isolate par chalti hai. Heavy CPU work main isolate par hua to UI freeze ho sakti hai.",
        code("""
void heavyWork() {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  print(sum);
}
"""),
        "Problem:",
        text_block("""
Main isolate busy
  -> UI update wait
  -> scroll lag
  -> animation lag
  -> app hang feeling
"""),
        "## 2. Event Loop",
        text_block("""
Main Isolate
  -> Call Stack
  -> Microtask Queue
  -> Event Queue
  -> Event Loop
"""),
        code("""
void main() {
  print("A");

  Future(() {
    print("B");
  });

  print("C");
}
"""),
        "Output:",
        text_block("A\nC\nB"),
        "## 3. Microtask Queue",
        code("""
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
"""),
        "Output:",
        text_block("A\nC\nMicrotask\nFuture"),
        "GOLDEN NOTE:",
        text_block("Microtask queue event queue se pehle run hoti hai."),
        "## 4. Isolate Kya Hai?",
        "Isolate independent worker hai jiske paas own memory aur own event loop hota hai.",
        text_block("""
Main Isolate
  memory A
  event loop A

Worker Isolate
  memory B
  event loop B
"""),
        "GOLDEN NOTE:",
        text_block("Isolates memory share nahi karte. Message passing se communicate karte hain."),
        "## 5. Thread vs Isolate",
        table(["Thread", "Isolate"], [
            ["Memory share kar sakta hai", "Memory share nahi hoti"],
            ["Race condition possible", "Race condition risk kam"],
            ["Locks ki zarurat pad sakti hai", "Message passing"],
            ["Shared state bugs", "Independent state"],
        ]),
        "## 6. ReceivePort and SendPort",
        text_block("""
ReceivePort = mailbox
SendPort = mailbox ka address
"""),
        code("""
import 'dart:isolate';

void main() {
  final receivePort = ReceivePort();

  receivePort.listen((message) {
    print(message);
  });

  receivePort.sendPort.send("Hello");
}
"""),
        "## 7. Isolate.spawn() Basic Example",
        code("""
import 'dart:isolate';

void worker(String message) {
  print(message);
}

void main() {
  Isolate.spawn(worker, "Hello Worker");
}
"""),
        "## 8. Worker Se Main Ko Result",
        code("""
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
"""),
        "## 9. Multiple Values - List Method",
        code("""
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
"""),
        "## 10. Multiple Values - Map Method",
        code("""
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
"""),
        "## 11. Multiple Values - Custom Class Method",
        code("""
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
"""),
        "GOLDEN NOTE:",
        text_block("Production me Custom Class method readable aur type-safe hota hai."),
        "## 12. compute()",
        "Flutter ka compute one-time heavy task ke liye simple isolate helper hai.",
        code("""
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
"""),
        text_block("""
compute()
  -> isolate create
  -> task run
  -> result return
  -> isolate close
"""),
        "## 13. compute With Model Parsing",
        code("""
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
"""),
        "## 14. Isolate Lifecycle",
        text_block("""
Create
Initialize memory/event loop
Running
Waiting
Running again
Killed
"""),
        "## 15. Isolate.kill()",
        code("""
final isolate = await Isolate.spawn(worker, data);
isolate.kill(priority: Isolate.immediate);
"""),
        "Cleanup chart:",
        text_block("""
Long-running isolate end:
  -> isolate.kill()
  -> receivePort.close()
  -> subscription.cancel()
"""),
        "## 16. Error Handling",
        code("""
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
"""),
        "## 17. TransferableTypedData",
        "Large binary data ke liye copy cost avoid karne me useful.",
        code("""
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
"""),
        "## 18. Worker Pool Concept",
        text_block("""
Bad:
100 tasks -> 100 isolates create/destroy

Good:
4 workers create -> 100 tasks reuse
"""),
        "Use cases: image compression batch, OCR, video processing, ML batch processing.",
        "## 19. When To Use What",
        table(["Situation", "Use"], [
            ["Simple API call", "Future/async-await"],
            ["One-time heavy CPU task", "compute()"],
            ["Long-running worker", "Isolate.spawn()"],
            ["Large binary data", "TransferableTypedData"],
            ["Many repeated heavy tasks", "Worker Pool"],
        ]),
        interview([
            ("Isolate kyun chahiye?", "Heavy CPU work ko main isolate se alag run karne ke liye, taki UI smooth rahe."),
            ("Isolate kya hai?", "Independent worker with own memory and own event loop."),
            ("Isolates memory share karte hain?", "Nahi, message passing se communicate karte hain."),
            ("ReceivePort kya hai?", "Message receive karne ka mailbox."),
            ("SendPort kya hai?", "Message bhejne ke liye mailbox ka address."),
            ("Isolate.spawn() me multiple values kaise bhejte hain?", "List, Map, ya Custom Class se wrap karke."),
            ("compute() kab use karte hain?", "One-time heavy CPU task ke liye."),
            ("compute aur Isolate.spawn me difference?", "compute short-life worker, Isolate.spawn long-running/custom worker."),
            ("Event Loop kya hai?", "Scheduler jo queued async tasks ko run karta hai."),
            ("Microtask queue ki priority?", "Event queue se high priority."),
            ("API call ke liye isolate chahiye?", "Generally nahi, API already async hai."),
            ("Worker Pool kya hai?", "Reusable isolates ka group for many repeated heavy tasks."),
        ]),
    ]
    return "\n\n".join(parts)


LIST_FUNCTIONS = [
    ("length", "List me kitne elements hain", "numbers.length"),
    ("isEmpty", "List empty hai ya nahi", "numbers.isEmpty"),
    ("isNotEmpty", "List me data hai ya nahi", "numbers.isNotEmpty"),
    ("first", "Pehla element", "numbers.first"),
    ("last", "Last element", "numbers.last"),
    ("reversed", "Reverse iterable", "numbers.reversed.toList()"),
    ("add", "End me element add", "numbers.add(4)"),
    ("addAll", "Multiple elements add", "numbers.addAll([4, 5])"),
    ("insert", "Specific index par add", "numbers.insert(1, 99)"),
    ("insertAll", "Specific index par multiple add", "numbers.insertAll(1, [8, 9])"),
    ("remove", "Value remove", "numbers.remove(2)"),
    ("removeAt", "Index se remove", "numbers.removeAt(0)"),
    ("removeLast", "Last element remove", "numbers.removeLast()"),
    ("removeRange", "Range remove", "numbers.removeRange(0, 2)"),
    ("removeWhere", "Condition based remove", "numbers.removeWhere((e) => e.isEven)"),
    ("clear", "List empty", "numbers.clear()"),
    ("contains", "Value exist?", "numbers.contains(2)"),
    ("indexOf", "Value ka first index", "numbers.indexOf(2)"),
    ("lastIndexOf", "Value ka last index", "numbers.lastIndexOf(2)"),
    ("elementAt", "Index par element", "numbers.elementAt(1)"),
    ("forEach", "Har element par action", "numbers.forEach(print)"),
    ("map", "Transform", "numbers.map((e) => e * 2).toList()"),
    ("where", "Filter", "numbers.where((e) => e.isEven).toList()"),
    ("firstWhere", "First matching", "numbers.firstWhere((e) => e > 2)"),
    ("lastWhere", "Last matching", "numbers.lastWhere((e) => e > 2)"),
    ("any", "Koi element condition satisfy?", "numbers.any((e) => e > 5)"),
    ("every", "Sab condition satisfy?", "numbers.every((e) => e > 0)"),
    ("reduce", "Combine without initial", "numbers.reduce((a, b) => a + b)"),
    ("fold", "Combine with initial", "numbers.fold(0, (a, b) => a + b)"),
    ("sort", "Sort in-place", "numbers.sort()"),
    ("sublist", "Part of list", "numbers.sublist(1, 3)"),
    ("join", "String join", "numbers.join(', ')"),
    ("take", "First n", "numbers.take(2).toList()"),
    ("skip", "Skip first n", "numbers.skip(2).toList()"),
    ("toSet", "Duplicates remove", "numbers.toSet()"),
]


SET_FUNCTIONS = [
    ("length", "Set size", "items.length"),
    ("isEmpty", "Empty hai?", "items.isEmpty"),
    ("isNotEmpty", "Data hai?", "items.isNotEmpty"),
    ("first", "Pehla element", "items.first"),
    ("last", "Last element", "items.last"),
    ("add", "Element add", "items.add(4)"),
    ("addAll", "Multiple add", "items.addAll({4, 5})"),
    ("remove", "Element remove", "items.remove(2)"),
    ("removeAll", "Multiple remove", "items.removeAll({1, 2})"),
    ("removeWhere", "Condition based remove", "items.removeWhere((e) => e.isEven)"),
    ("retainWhere", "Condition matching keep", "items.retainWhere((e) => e > 2)"),
    ("clear", "Set empty", "items.clear()"),
    ("contains", "Value exist?", "items.contains(2)"),
    ("containsAll", "Saare values exist?", "items.containsAll({1, 2})"),
    ("lookup", "Equal object find", "items.lookup(2)"),
    ("union", "Do set combine", "a.union(b)"),
    ("intersection", "Common values", "a.intersection(b)"),
    ("difference", "A me hai B me nahi", "a.difference(b)"),
    ("forEach", "Har element par action", "items.forEach(print)"),
    ("map", "Transform", "items.map((e) => e * 2).toSet()"),
    ("where", "Filter", "items.where((e) => e.isEven).toSet()"),
    ("firstWhere", "First matching", "items.firstWhere((e) => e > 2)"),
    ("lastWhere", "Last matching", "items.lastWhere((e) => e > 2)"),
    ("any", "Koi condition match?", "items.any((e) => e > 5)"),
    ("every", "Sab condition match?", "items.every((e) => e > 0)"),
    ("reduce", "Combine", "items.reduce((a, b) => a + b)"),
    ("fold", "Initial ke sath combine", "items.fold(0, (a, b) => a + b)"),
    ("take", "First n iterable", "items.take(2).toSet()"),
    ("skip", "Skip first n", "items.skip(2).toSet()"),
    ("join", "String join", "items.join(', ')"),
    ("toList", "Set to List", "items.toList()"),
    ("cast", "Type cast view", "items.cast<num>()"),
]


def collection_function_sections(title, variable, functions):
    rows = [[str(i), name, desc, f"`{example}`"] for i, (name, desc, example) in enumerate(functions, 1)]
    return "\n\n".join([
        f"## {title}",
        f"Minimum 30 functions cover kiye gaye hain. Base variable assume karo: `{variable}`.",
        table(["No", "Function", "Meaning", "Example"], rows),
        "Quick practice example:",
        code(f"""
void main() {{
  final {variable}
  print({variable.split('=')[0].strip()}.length);
}}
"""),
    ])


def collections_notes():
    parts = [
        "# PDF 4 - Collections: List, Set, Map, Collection If/For, Spread Operator",
        "Ye notes Dart Collections ko 0 se advanced level tak cover karte hain. List aur Set ke 30+ functions included hain.",
        "## Collection Roadmap",
        text_block("""
List
  -> ordered data
Set
  -> unique data
Map
  -> key-value data
Collection if
  -> conditionally add
Collection for
  -> loop se add
Spread operator
  -> collection expand
"""),
        "## 1. List Kya Hai?",
        "List ordered collection hai. Isme duplicate values allowed hain, index hota hai.",
        code("""
void main() {
  final numbers = [1, 2, 3, 2];
  print(numbers[0]);
  print(numbers.length);
}
"""),
        text_block("List = ordered + indexed + duplicates allowed"),
        collection_function_sections("2. List - 35 Important Functions", "numbers = [1, 2, 3]", LIST_FUNCTIONS),
        "## 3. List With Model Class",
        code("""
class User {
  final int id;
  final String name;

  User({required this.id, required this.name});
}

void main() {
  final users = [
    User(id: 1, name: "Aman"),
    User(id: 2, name: "Ravi"),
    User(id: 3, name: "Neha"),
  ];

  final names = users.map((user) => user.name).toList();
  final user = users.firstWhere((user) => user.id == 2);

  print(names);
  print(user.name);
}
"""),
        "## 4. Set Kya Hai?",
        "Set unique values ka collection hai. Duplicate values automatically remove ho jaati hain.",
        code("""
void main() {
  final numbers = {1, 2, 3, 2};
  print(numbers);
}
"""),
        "Output:",
        text_block("{1, 2, 3}"),
        text_block("Set = unique values + no duplicate"),
        collection_function_sections("5. Set - 32 Important Functions", "items = {1, 2, 3}", SET_FUNCTIONS),
        "## 6. Set With Model Class",
        code("""
class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  @override
  bool operator ==(Object other) {
    return other is User && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

void main() {
  final users = {
    User(id: 1, name: "Aman"),
    User(id: 1, name: "Aman duplicate"),
  };

  print(users.length); // 1
}
"""),
        "GOLDEN NOTE:",
        text_block("Custom object ko Set me unique banane ke liye == aur hashCode override karo."),
        "## 7. Map Kya Hai?",
        "Map key-value pair collection hai.",
        code("""
void main() {
  final user = {
    "id": 1,
    "name": "Aman",
    "city": "Delhi",
  };

  print(user["name"]);
}
"""),
        "Map functions chart:",
        table(["Function/Property", "Meaning", "Example"], [
            ["keys", "All keys", "`user.keys`"],
            ["values", "All values", "`user.values`"],
            ["length", "Pair count", "`user.length`"],
            ["isEmpty", "Empty?", "`user.isEmpty`"],
            ["containsKey", "Key exist?", "`user.containsKey('name')`"],
            ["containsValue", "Value exist?", "`user.containsValue('Aman')`"],
            ["addAll", "Multiple pairs add", "`user.addAll({'age': 20})`"],
            ["remove", "Key remove", "`user.remove('city')`"],
            ["clear", "Map empty", "`user.clear()`"],
            ["forEach", "Loop pairs", "`user.forEach((k, v) {})`"],
            ["map", "Transform map", "`user.map((k, v) => MapEntry(k, v))`"],
            ["putIfAbsent", "Missing key add", "`user.putIfAbsent('age', () => 20)`"],
            ["update", "Value update", "`user.update('age', (v) => 21)`"],
            ["updateAll", "All update", "`user.updateAll((k, v) => v)`"],
            ["removeWhere", "Condition remove", "`user.removeWhere((k, v) => v == null)`"],
        ]),
        "## 8. Map With Model Class",
        code("""
class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
    };
  }
}

void main() {
  final json = {"id": 1, "name": "Aman"};
  final user = User.fromJson(json);
  print(user.toJson());
}
"""),
        "## 9. Collection If",
        "Condition true ho to collection me element add.",
        code("""
void main() {
  final isAdmin = true;

  final menu = [
    "Home",
    "Profile",
    if (isAdmin) "Admin Panel",
  ];

  print(menu);
}
"""),
        "## 10. Collection For",
        "Loop se collection build karna.",
        code("""
void main() {
  final numbers = [1, 2, 3];

  final doubled = [
    for (final number in numbers) number * 2,
  ];

  print(doubled);
}
"""),
        "## 11. Spread Operator (...)",
        "Ek collection ke elements ko dusri collection me expand karta hai.",
        code("""
void main() {
  final a = [1, 2];
  final b = [3, 4];

  final result = [...a, ...b, 5];
  print(result);
}
"""),
        "Null-aware spread:",
        code("""
void main() {
  List<int>? numbers;

  final result = [
    0,
    ...?numbers,
    4,
  ];

  print(result);
}
"""),
        "## 12. Decision Chart",
        table(["Need", "Use"], [
            ["Ordered data", "List"],
            ["Unique data", "Set"],
            ["Key-value data", "Map"],
            ["Conditional element", "Collection if"],
            ["Loop generated elements", "Collection for"],
            ["Merge collections", "Spread operator"],
        ]),
        interview([
            ("List kya hai?", "Ordered indexed collection jisme duplicates allowed hain."),
            ("Set kya hai?", "Unique values ka collection."),
            ("Map kya hai?", "Key-value pair collection."),
            ("List aur Set difference?", "List ordered/indexed/duplicates allowed. Set unique values rakhta hai."),
            ("Set me custom object unique kaise banega?", "== operator aur hashCode override karke."),
            ("Collection if kya hai?", "Collection ke andar conditionally element add karna."),
            ("Collection for kya hai?", "Loop ke through collection elements generate karna."),
            ("Spread operator ka use?", "Ek collection ke elements dusri collection me expand karna."),
            ("...? kya hai?", "Null-aware spread; null collection ko safely ignore karta hai."),
            ("Map fromJson/toJson ka use?", "JSON data ko model object me convert aur object ko JSON me convert karna."),
        ]),
    ]
    return "\n\n".join(parts)


def exceptions_notes():
    parts = [
        "# PDF 5 - Exception Handling Complete Notes",
        "Ye notes try-catch, finally, throw, custom exceptions ko 0 se advanced level tak explain karte hain.",
        "## Roadmap",
        text_block("""
Error vs Exception
  -> try
  -> catch
  -> on
  -> finally
  -> throw
  -> rethrow
  -> custom exception
  -> async exception handling
  -> production patterns
"""),
        "## 1. Exception Kya Hai?",
        "Exception runtime problem hai jise handle karke app crash avoid kar sakte ho.",
        code("""
void main() {
  final result = 10 ~/ 0;
  print(result);
}
"""),
        "Ye crash/error dega kyunki zero se divide nahi kar sakte.",
        "## 2. try-catch",
        code("""
void main() {
  try {
    final result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
"""),
        "GOLDEN NOTE:",
        text_block("Risky code try me. Error handling catch me."),
        "## 3. catch With StackTrace",
        code("""
void main() {
  try {
    throw Exception("Something failed");
  } catch (e, stackTrace) {
    print("Error: $e");
    print("Stack: $stackTrace");
  }
}
"""),
        "StackTrace debugging ke liye useful hota hai.",
        "## 4. on Specific Exception",
        code("""
void main() {
  try {
    final result = 10 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  } catch (e) {
    print("Unknown error: $e");
  }
}
"""),
        "Use `on` jab specific exception type handle karna ho.",
        "## 5. finally",
        "`finally` success ho ya error, dono case me run hota hai.",
        code("""
void main() {
  try {
    print("Open file");
    throw Exception("Read failed");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Close file");
  }
}
"""),
        "Use cases: file close, loader hide, database connection close, stream subscription cleanup.",
        "## 6. throw",
        "`throw` se custom error throw kar sakte ho.",
        code("""
void withdraw(int amount) {
  if (amount <= 0) {
    throw Exception("Amount must be positive");
  }
  print("Withdraw: $amount");
}

void main() {
  try {
    withdraw(-100);
  } catch (e) {
    print(e);
  }
}
"""),
        "## 7. rethrow",
        "Catch me log karna hai, par error upper layer ko bhi bhejna hai to rethrow.",
        code("""
void risky() {
  throw Exception("Failed");
}

void service() {
  try {
    risky();
  } catch (e) {
    print("Log error: $e");
    rethrow;
  }
}

void main() {
  try {
    service();
  } catch (e) {
    print("UI error: $e");
  }
}
"""),
        "## 8. Custom Exceptions",
        code("""
class InvalidAgeException implements Exception {
  final String message;

  InvalidAgeException(this.message);

  @override
  String toString() => "InvalidAgeException: $message";
}

void validateAge(int age) {
  if (age < 18) {
    throw InvalidAgeException("Age must be 18 or above");
  }
}

void main() {
  try {
    validateAge(15);
  } on InvalidAgeException catch (e) {
    print(e);
  }
}
"""),
        "GOLDEN NOTE:",
        text_block("Custom exception domain-specific errors ko readable banata hai."),
        "## 9. Custom Exception With Error Code",
        code("""
class AppException implements Exception {
  final String code;
  final String message;

  AppException({
    required this.code,
    required this.message,
  });

  @override
  String toString() => "[$code] $message";
}

void login(String email) {
  if (!email.contains("@")) {
    throw AppException(
      code: "INVALID_EMAIL",
      message: "Please enter a valid email",
    );
  }
}
"""),
        "## 10. Async Error Handling",
        code("""
Future<String> fetchUser() async {
  throw Exception("Network failed");
}

void main() async {
  try {
    final user = await fetchUser();
    print(user);
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Stop loader");
  }
}
"""),
        "## 11. Future catchError",
        code("""
void main() {
  Future(() {
    throw Exception("Failed");
  }).then((value) {
    print(value);
  }).catchError((error) {
    print("Error: $error");
  }).whenComplete(() {
    print("Done");
  });
}
"""),
        "## 12. Exception Handling In Repository Pattern",
        code("""
class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);
}

class UserRepository {
  Future<String> fetchUser() async {
    try {
      // API call
      throw NetworkException("No internet");
    } on NetworkException {
      rethrow;
    } catch (e) {
      throw Exception("Unknown repository error");
    }
  }
}
"""),
        "## 13. Common Mistakes",
        table(["Mistake", "Problem", "Better"], [
            ["Empty catch", "Error silently hide", "Log or show useful message"],
            ["Generic Exception everywhere", "Debug hard", "Custom exceptions"],
            ["finally ignore", "Resources leak", "Cleanup in finally"],
            ["No async try/catch", "Unhandled Future error", "await inside try"],
            ["Throw string", "Poor type safety", "Throw Exception/custom exception"],
        ]),
        "## 14. Decision Chart",
        table(["Need", "Use"], [
            ["Risky code handle", "try-catch"],
            ["Specific error type", "on Type catch"],
            ["Always cleanup", "finally"],
            ["Create error", "throw"],
            ["Log and pass upward", "rethrow"],
            ["Business/domain error", "Custom Exception"],
            ["Future error", "try/catch with await or catchError"],
        ]),
        interview([
            ("Exception kya hai?", "Runtime problem jise handle karke app crash avoid kar sakte hain."),
            ("try-catch ka use?", "Risky code run karna aur error handle karna."),
            ("finally kab run hota hai?", "Success aur error dono cases me."),
            ("throw kya karta hai?", "Exception manually throw karta hai."),
            ("Custom exception kyun banate hain?", "Domain-specific readable errors ke liye."),
            ("on aur catch me difference?", "on specific type handle karta hai; catch generic error object catch karta hai."),
            ("rethrow kya karta hai?", "Caught error ko upper layer me dobara throw karta hai."),
            ("Async error kaise handle karoge?", "await ko try/catch me wrap karke ya catchError se."),
            ("Empty catch kyun bad practice hai?", "Error hide ho jata hai aur debugging hard hoti hai."),
            ("finally ke practical use cases?", "Loader stop, file close, db connection close, stream cleanup."),
        ]),
    ]
    return "\n\n".join(parts)


FILES = [
    ("pdf1_asynchronous_programming.md", "pdf1_asynchronous_programming.pdf", async_notes),
    ("pdf2_streams.md", "pdf2_streams.pdf", streams_notes),
    ("pdf3_isolates.md", "pdf3_isolates.pdf", isolates_notes),
    ("pdf4_collections.md", "pdf4_collections.pdf", collections_notes),
    ("pdf5_exception_handling.md", "pdf5_exception_handling.pdf", exceptions_notes),
]


def main():
    NOTES_DIR.mkdir(parents=True, exist_ok=True)
    PDF_DIR.mkdir(parents=True, exist_ok=True)

    for md_name, pdf_name, builder in FILES:
        md_path = NOTES_DIR / md_name
        pdf_path = PDF_DIR / pdf_name
        md_path.write_text(builder(), encoding="utf-8")
        subprocess.run([PYTHON, str(GENERATOR), str(md_path), str(pdf_path)], check=True)
        print(pdf_path)


if __name__ == "__main__":
    main()
