# PDF 1 - Asynchronous Programming: Future, async-await, Future.wait

Ye notes Dart/Flutter asynchronous programming ko 0 se advanced level tak explain karte hain. Goal ye hai ki Future aur async-await mind me permanently fit ho jaye.

## Roadmap

```text
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
```

## 1. Synchronous vs Asynchronous Code

Synchronous code line-by-line run hota hai. Ek line complete, phir next line. Asynchronous code me kuch kaam baad me complete hota hai, aur tab callback/result milta hai.

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

Asynchronous example:

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

GOLDEN NOTE:

```text
Future ka callback immediately run nahi hota.
Pehle current sync code complete hota hai.
Fir event loop async task run karta hai.
```

## 2. Event Loop Quick Mental Model

```text
Main code
  -> Call stack
  -> Microtask queue
  -> Event queue

Priority:
Main code first
Microtask second
Event queue third
```

## 3. Future Kya Hai?

Future ek object hai jo batata hai ki result abhi nahi, baad me milega. Result value bhi ho sakta hai, error bhi.

```text
Future = ek baar result
Stream = baar-baar result
```

```dart
Future<String> fetchName() {
  return Future.value("Aman");
}

void main() async {
  final name = await fetchName();
  print(name);
}
```

Future ke states:

| State | Meaning |
|---|---|
| Uncompleted | Kaam chal raha hai |
| Completed with value | Result mil gaya |
| Completed with error | Error aa gaya |

## 4. Future() Constructor

```dart
void main() {
  print("Start");

  Future(() {
    print("Inside Future");
  });

  print("End");
}
```

Output:

```text
Start
End
Inside Future
```

GOLDEN NOTE:

```text
Future(() {}) event queue me schedule hota hai.
```

## 5. Future.delayed()

```dart
void main() {
  print("Start");

  Future.delayed(const Duration(seconds: 2), () {
    print("After 2 seconds");
  });

  print("End");
}
```

Use case: splash delay, retry delay, fake loading, timer-like one-time wait.

## 6. Future.value(), Future.error(), Future.sync(), Future.microtask()

| Future | Meaning | Use |
|---|---|---|
| Future.value(x) | Already completed value | Cached value return karni ho |
| Future.error(e) | Already failed Future | Error flow test karna ho |
| Future.sync(fn) | Sync result/error ko Future me wrap | Common API banana ho |
| Future.microtask(fn) | Microtask queue me Future | Very small high-priority task |

```dart
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
```

## 7. then(), catchError(), whenComplete()

```dart
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
```

Chart:

```text
Future starts
  -> success? then()
  -> error? catchError()
  -> both cases? whenComplete()
```

## 8. async-await

`async` function ko Future-returning banata hai. `await` Future ke result ka wait karta hai, lekin thread block nahi karta.

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

GOLDEN NOTE:

```text
await thread ko block nahi karta.
await current async function ko pause karta hai.
Future complete hone par function resume hota hai.
```

## 9. await Internally Kaise Socho?

```text
Line: final data = await fetchData();

fetchData start
  -> Future returned
  -> current function paused
  -> event loop free
  -> Future complete
  -> function resumes
  -> data variable me result
```

## 10. Error Handling in async-await

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

Production rule: async-await ke saath try/catch/finally clean aur readable hota hai.

## 11. Future.wait

Jab multiple independent futures ko ek saath wait karna ho, Future.wait use hota hai.

```dart
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
```

Output:

```text
[User, Posts, Comments]
```

GOLDEN NOTE:

```text
Independent tasks ko sequential await mat karo.
Future.wait se total time kam ho sakta hai.
```

## 12. Future.wait Error Handling

```dart
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
```

By default agar koi ek Future fail hota hai, Future.wait error complete ho sakta hai.

## 13. Future.timeout

```dart
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
```

Use case: slow API, payment status, location fetch.

## 14. Common Mistakes

| Mistake | Problem | Correct Thinking |
|---|---|---|
| Future ko print karna | Instance of Future dikhega | await use karo |
| Heavy CPU work Future me | Same isolate block ho sakta hai | compute/isolate use karo |
| Sequential await for independent APIs | Slow | Future.wait |
| try/catch na lagana | Unhandled error | try/catch/finally |
| await bhool jana | Unexpected output | Future result await karo |

## Interview Questions And Answers

Q1. Future kya hai?

Answer: Future ek async result ka placeholder hai jo baad me value ya error se complete hota hai.

Q2. async ka kya kaam hai?

Answer: async function ko Future-returning function banata hai aur await allow karta hai.

Q3. await kya karta hai?

Answer: await current async function ko pause karta hai jab tak Future complete na ho.

Q4. await thread block karta hai?

Answer: Nahi, event loop free rehta hai.

Q5. Future.wait kab use karte hain?

Answer: Multiple independent futures ko ek saath wait karne ke liye.

Q6. Future(() {}) kahan schedule hota hai?

Answer: Event queue me.

Q7. Future.microtask kahan schedule hota hai?

Answer: Microtask queue me.

Q8. Future.timeout ka use?

Answer: Future ko max time limit dene ke liye.

Q9. Future me error kaise handle karte ho?

Answer: then/catchError ya async-await ke saath try/catch.

Q10. API call ke liye isolate chahiye?

Answer: Generally nahi; API async hoti hai. CPU-heavy parsing ke liye isolate useful hai.