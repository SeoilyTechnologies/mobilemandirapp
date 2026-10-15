# PDF 5 - Exception Handling Complete Notes

Ye notes try-catch, finally, throw, custom exceptions ko 0 se advanced level tak explain karte hain.

## Roadmap

```text
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
```

## 1. Exception Kya Hai?

Exception runtime problem hai jise handle karke app crash avoid kar sakte ho.

```dart
void main() {
  final result = 10 ~/ 0;
  print(result);
}
```

Ye crash/error dega kyunki zero se divide nahi kar sakte.

## 2. try-catch

```dart
void main() {
  try {
    final result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
```

GOLDEN NOTE:

```text
Risky code try me. Error handling catch me.
```

## 3. catch With StackTrace

```dart
void main() {
  try {
    throw Exception("Something failed");
  } catch (e, stackTrace) {
    print("Error: $e");
    print("Stack: $stackTrace");
  }
}
```

StackTrace debugging ke liye useful hota hai.

## 4. on Specific Exception

```dart
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
```

Use `on` jab specific exception type handle karna ho.

## 5. finally

`finally` success ho ya error, dono case me run hota hai.

```dart
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
```

Use cases: file close, loader hide, database connection close, stream subscription cleanup.

## 6. throw

`throw` se custom error throw kar sakte ho.

```dart
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
```

## 7. rethrow

Catch me log karna hai, par error upper layer ko bhi bhejna hai to rethrow.

```dart
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
```

## 8. Custom Exceptions

```dart
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
```

GOLDEN NOTE:

```text
Custom exception domain-specific errors ko readable banata hai.
```

## 9. Custom Exception With Error Code

```dart
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
```

## 10. Async Error Handling

```dart
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
```

## 11. Future catchError

```dart
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
```

## 12. Exception Handling In Repository Pattern

```dart
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
```

## 13. Common Mistakes

| Mistake | Problem | Better |
|---|---|---|
| Empty catch | Error silently hide | Log or show useful message |
| Generic Exception everywhere | Debug hard | Custom exceptions |
| finally ignore | Resources leak | Cleanup in finally |
| No async try/catch | Unhandled Future error | await inside try |
| Throw string | Poor type safety | Throw Exception/custom exception |

## 14. Decision Chart

| Need | Use |
|---|---|
| Risky code handle | try-catch |
| Specific error type | on Type catch |
| Always cleanup | finally |
| Create error | throw |
| Log and pass upward | rethrow |
| Business/domain error | Custom Exception |
| Future error | try/catch with await or catchError |

## Interview Questions And Answers

Q1. Exception kya hai?

Answer: Runtime problem jise handle karke app crash avoid kar sakte hain.

Q2. try-catch ka use?

Answer: Risky code run karna aur error handle karna.

Q3. finally kab run hota hai?

Answer: Success aur error dono cases me.

Q4. throw kya karta hai?

Answer: Exception manually throw karta hai.

Q5. Custom exception kyun banate hain?

Answer: Domain-specific readable errors ke liye.

Q6. on aur catch me difference?

Answer: on specific type handle karta hai; catch generic error object catch karta hai.

Q7. rethrow kya karta hai?

Answer: Caught error ko upper layer me dobara throw karta hai.

Q8. Async error kaise handle karoge?

Answer: await ko try/catch me wrap karke ya catchError se.

Q9. Empty catch kyun bad practice hai?

Answer: Error hide ho jata hai aur debugging hard hoti hai.

Q10. finally ke practical use cases?

Answer: Loader stop, file close, db connection close, stream cleanup.