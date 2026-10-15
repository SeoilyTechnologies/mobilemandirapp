# PDF 2 - Streams Complete Notes

Ye PDF Streams ko 0 se advanced tak cover karta hai: Single Subscription Stream, Broadcast Stream, StreamController, StreamBuilder, normal examples, model class examples, mistakes, aur interview Q&A.

## Roadmap

```text
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
```

## 1. Stream Kya Hai?

Stream multiple values time ke sath emit karta hai.

```text
Future = ek baar result
Stream = baar-baar result

Future = photo
Stream = video
```

Examples: chat messages, Firebase snapshots, location updates, download progress, timer ticks, search input.

## 2. Basic Stream Example

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

GOLDEN NOTE:

```text
yield ka matlab stream me ek value emit karna.
```

## 3. async* and yield

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

## 4. listen(), onError, onDone

```dart
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
```

## 5. StreamSubscription

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

  await Future.delayed(const Duration(seconds: 2));
  subscription.resume();

  await Future.delayed(const Duration(seconds: 3));
  await subscription.cancel();
}
```

GOLDEN NOTE:

```text
listen() subscription deta hai. Subscription se pause/resume/cancel kar sakte ho.
```

## 6. Single Subscription Stream

Single subscription stream ko sirf ek listener listen kar sakta hai.

```dart
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
```

Use cases: file read, HTTP response body, one-time data sequence.

GOLDEN NOTE:

```text
Single subscription stream = ek listener ke liye private pipe.
```

## 7. Single Subscription Stream With Model Class

```dart
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
```

## 8. Broadcast Stream

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

GOLDEN NOTE:

```text
Broadcast stream = live announcement. Active listeners ko event milta hai.
```

## 9. Broadcast Stream With Model Class

```dart
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
```

## 10. StreamController

```text
StreamController = stream ka remote

add(data)       -> data emit
addError(error) -> error emit
close()         -> stream close
stream          -> listeners ko stream
```

```dart
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
```

## 11. StreamController With Model List

```dart
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
```

## 12. StreamBuilder

Flutter me StreamBuilder stream ke latest snapshot ke according UI rebuild karta hai.

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

Snapshot chart:

| Snapshot property | Meaning |
|---|---|
| snapshot.data | Latest data |
| snapshot.error | Error |
| snapshot.hasData | Data available? |
| snapshot.hasError | Error available? |
| connectionState | none/waiting/active/done |

## 13. Stream Transformations

```dart
void main() {
  Stream.fromIterable([1, 2, 3, 4, 5])
      .where((value) => value.isEven)
      .map((value) => value * 10)
      .listen(print);
}
```

Output:

```text
20
40
```

asyncMap example:

```dart
Stream.fromIterable([1, 2, 3])
    .asyncMap((value) async {
      await Future.delayed(const Duration(milliseconds: 300));
      return value * 2;
    })
    .listen(print);
```

## 14. Stream Types Chart

| Type | Listeners | Best For | Important Point |
|---|---|---|---|
| Single Subscription | One | File/HTTP one-time sequence | Second listener error de sakta hai |
| Broadcast | Many | UI events/app events | Late listener old event miss kar sakta hai |

## 15. Common Mistakes

| Mistake | Problem | Fix |
|---|---|---|
| Controller close nahi | Memory leak | dispose me close |
| Subscription cancel nahi | Old listener active | dispose me cancel |
| Single stream multiple listen | Bad state error | broadcast use karo |
| Broadcast late listener | Old event miss | State store alag rakho |
| Stream ko Future samajhna | Wrong mental model | Stream multiple values hai |

## Interview Questions And Answers

Q1. Stream kya hai?

Answer: Stream time ke sath multiple async values emit karta hai.

Q2. Future vs Stream?

Answer: Future single result, Stream multiple results.

Q3. async* kya karta hai?

Answer: Stream-returning async generator function banata hai.

Q4. yield kya karta hai?

Answer: Stream me value emit karta hai.

Q5. Single Subscription Stream kya hai?

Answer: Jise sirf ek listener listen kar sakta hai.

Q6. Broadcast Stream kya hai?

Answer: Jise multiple listeners listen kar sakte hain.

Q7. StreamController kya hai?

Answer: Manual stream control object jisme add/addError/close hota hai.

Q8. StreamSubscription kya hai?

Answer: Listener ka control object: pause/resume/cancel.

Q9. StreamBuilder kya karta hai?

Answer: Stream snapshot ke according Flutter UI rebuild karta hai.

Q10. Broadcast stream late listener old data leta hai?

Answer: Usually nahi, live event miss ho sakta hai.