# PDF 4 - Collections: List, Set, Map, Collection If/For, Spread Operator

Ye notes Dart Collections ko 0 se advanced level tak cover karte hain. List aur Set ke 30+ functions included hain.

## Collection Roadmap

```text
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
```

## 1. List Kya Hai?

List ordered collection hai. Isme duplicate values allowed hain, index hota hai.

```dart
void main() {
  final numbers = [1, 2, 3, 2];
  print(numbers[0]);
  print(numbers.length);
}
```

```text
List = ordered + indexed + duplicates allowed
```

## 2. List - 35 Important Functions

Minimum 30 functions cover kiye gaye hain. Base variable assume karo: `numbers = [1, 2, 3]`.

| No | Function | Meaning | Example |
|---|---|---|---|
| 1 | length | List me kitne elements hain | `numbers.length` |
| 2 | isEmpty | List empty hai ya nahi | `numbers.isEmpty` |
| 3 | isNotEmpty | List me data hai ya nahi | `numbers.isNotEmpty` |
| 4 | first | Pehla element | `numbers.first` |
| 5 | last | Last element | `numbers.last` |
| 6 | reversed | Reverse iterable | `numbers.reversed.toList()` |
| 7 | add | End me element add | `numbers.add(4)` |
| 8 | addAll | Multiple elements add | `numbers.addAll([4, 5])` |
| 9 | insert | Specific index par add | `numbers.insert(1, 99)` |
| 10 | insertAll | Specific index par multiple add | `numbers.insertAll(1, [8, 9])` |
| 11 | remove | Value remove | `numbers.remove(2)` |
| 12 | removeAt | Index se remove | `numbers.removeAt(0)` |
| 13 | removeLast | Last element remove | `numbers.removeLast()` |
| 14 | removeRange | Range remove | `numbers.removeRange(0, 2)` |
| 15 | removeWhere | Condition based remove | `numbers.removeWhere((e) => e.isEven)` |
| 16 | clear | List empty | `numbers.clear()` |
| 17 | contains | Value exist? | `numbers.contains(2)` |
| 18 | indexOf | Value ka first index | `numbers.indexOf(2)` |
| 19 | lastIndexOf | Value ka last index | `numbers.lastIndexOf(2)` |
| 20 | elementAt | Index par element | `numbers.elementAt(1)` |
| 21 | forEach | Har element par action | `numbers.forEach(print)` |
| 22 | map | Transform | `numbers.map((e) => e * 2).toList()` |
| 23 | where | Filter | `numbers.where((e) => e.isEven).toList()` |
| 24 | firstWhere | First matching | `numbers.firstWhere((e) => e > 2)` |
| 25 | lastWhere | Last matching | `numbers.lastWhere((e) => e > 2)` |
| 26 | any | Koi element condition satisfy? | `numbers.any((e) => e > 5)` |
| 27 | every | Sab condition satisfy? | `numbers.every((e) => e > 0)` |
| 28 | reduce | Combine without initial | `numbers.reduce((a, b) => a + b)` |
| 29 | fold | Combine with initial | `numbers.fold(0, (a, b) => a + b)` |
| 30 | sort | Sort in-place | `numbers.sort()` |
| 31 | sublist | Part of list | `numbers.sublist(1, 3)` |
| 32 | join | String join | `numbers.join(', ')` |
| 33 | take | First n | `numbers.take(2).toList()` |
| 34 | skip | Skip first n | `numbers.skip(2).toList()` |
| 35 | toSet | Duplicates remove | `numbers.toSet()` |

Quick practice example:

```dart
void main() {
  final numbers = [1, 2, 3]
  print(numbers.length);
}
```

## 3. List With Model Class

```dart
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
```

## 4. Set Kya Hai?

Set unique values ka collection hai. Duplicate values automatically remove ho jaati hain.

```dart
void main() {
  final numbers = {1, 2, 3, 2};
  print(numbers);
}
```

Output:

```text
{1, 2, 3}
```

```text
Set = unique values + no duplicate
```

## 5. Set - 32 Important Functions

Minimum 30 functions cover kiye gaye hain. Base variable assume karo: `items = {1, 2, 3}`.

| No | Function | Meaning | Example |
|---|---|---|---|
| 1 | length | Set size | `items.length` |
| 2 | isEmpty | Empty hai? | `items.isEmpty` |
| 3 | isNotEmpty | Data hai? | `items.isNotEmpty` |
| 4 | first | Pehla element | `items.first` |
| 5 | last | Last element | `items.last` |
| 6 | add | Element add | `items.add(4)` |
| 7 | addAll | Multiple add | `items.addAll({4, 5})` |
| 8 | remove | Element remove | `items.remove(2)` |
| 9 | removeAll | Multiple remove | `items.removeAll({1, 2})` |
| 10 | removeWhere | Condition based remove | `items.removeWhere((e) => e.isEven)` |
| 11 | retainWhere | Condition matching keep | `items.retainWhere((e) => e > 2)` |
| 12 | clear | Set empty | `items.clear()` |
| 13 | contains | Value exist? | `items.contains(2)` |
| 14 | containsAll | Saare values exist? | `items.containsAll({1, 2})` |
| 15 | lookup | Equal object find | `items.lookup(2)` |
| 16 | union | Do set combine | `a.union(b)` |
| 17 | intersection | Common values | `a.intersection(b)` |
| 18 | difference | A me hai B me nahi | `a.difference(b)` |
| 19 | forEach | Har element par action | `items.forEach(print)` |
| 20 | map | Transform | `items.map((e) => e * 2).toSet()` |
| 21 | where | Filter | `items.where((e) => e.isEven).toSet()` |
| 22 | firstWhere | First matching | `items.firstWhere((e) => e > 2)` |
| 23 | lastWhere | Last matching | `items.lastWhere((e) => e > 2)` |
| 24 | any | Koi condition match? | `items.any((e) => e > 5)` |
| 25 | every | Sab condition match? | `items.every((e) => e > 0)` |
| 26 | reduce | Combine | `items.reduce((a, b) => a + b)` |
| 27 | fold | Initial ke sath combine | `items.fold(0, (a, b) => a + b)` |
| 28 | take | First n iterable | `items.take(2).toSet()` |
| 29 | skip | Skip first n | `items.skip(2).toSet()` |
| 30 | join | String join | `items.join(', ')` |
| 31 | toList | Set to List | `items.toList()` |
| 32 | cast | Type cast view | `items.cast<num>()` |

Quick practice example:

```dart
void main() {
  final items = {1, 2, 3}
  print(items.length);
}
```

## 6. Set With Model Class

```dart
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
```

GOLDEN NOTE:

```text
Custom object ko Set me unique banane ke liye == aur hashCode override karo.
```

## 7. Map Kya Hai?

Map key-value pair collection hai.

```dart
void main() {
  final user = {
    "id": 1,
    "name": "Aman",
    "city": "Delhi",
  };

  print(user["name"]);
}
```

Map functions chart:

| Function/Property | Meaning | Example |
|---|---|---|
| keys | All keys | `user.keys` |
| values | All values | `user.values` |
| length | Pair count | `user.length` |
| isEmpty | Empty? | `user.isEmpty` |
| containsKey | Key exist? | `user.containsKey('name')` |
| containsValue | Value exist? | `user.containsValue('Aman')` |
| addAll | Multiple pairs add | `user.addAll({'age': 20})` |
| remove | Key remove | `user.remove('city')` |
| clear | Map empty | `user.clear()` |
| forEach | Loop pairs | `user.forEach((k, v) {})` |
| map | Transform map | `user.map((k, v) => MapEntry(k, v))` |
| putIfAbsent | Missing key add | `user.putIfAbsent('age', () => 20)` |
| update | Value update | `user.update('age', (v) => 21)` |
| updateAll | All update | `user.updateAll((k, v) => v)` |
| removeWhere | Condition remove | `user.removeWhere((k, v) => v == null)` |

## 8. Map With Model Class

```dart
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
```

## 9. Collection If

Condition true ho to collection me element add.

```dart
void main() {
  final isAdmin = true;

  final menu = [
    "Home",
    "Profile",
    if (isAdmin) "Admin Panel",
  ];

  print(menu);
}
```

## 10. Collection For

Loop se collection build karna.

```dart
void main() {
  final numbers = [1, 2, 3];

  final doubled = [
    for (final number in numbers) number * 2,
  ];

  print(doubled);
}
```

## 11. Spread Operator (...)

Ek collection ke elements ko dusri collection me expand karta hai.

```dart
void main() {
  final a = [1, 2];
  final b = [3, 4];

  final result = [...a, ...b, 5];
  print(result);
}
```

Null-aware spread:

```dart
void main() {
  List<int>? numbers;

  final result = [
    0,
    ...?numbers,
    4,
  ];

  print(result);
}
```

## 12. Decision Chart

| Need | Use |
|---|---|
| Ordered data | List |
| Unique data | Set |
| Key-value data | Map |
| Conditional element | Collection if |
| Loop generated elements | Collection for |
| Merge collections | Spread operator |

## Interview Questions And Answers

Q1. List kya hai?

Answer: Ordered indexed collection jisme duplicates allowed hain.

Q2. Set kya hai?

Answer: Unique values ka collection.

Q3. Map kya hai?

Answer: Key-value pair collection.

Q4. List aur Set difference?

Answer: List ordered/indexed/duplicates allowed. Set unique values rakhta hai.

Q5. Set me custom object unique kaise banega?

Answer: == operator aur hashCode override karke.

Q6. Collection if kya hai?

Answer: Collection ke andar conditionally element add karna.

Q7. Collection for kya hai?

Answer: Loop ke through collection elements generate karna.

Q8. Spread operator ka use?

Answer: Ek collection ke elements dusri collection me expand karna.

Q9. ...? kya hai?

Answer: Null-aware spread; null collection ko safely ignore karta hai.

Q10. Map fromJson/toJson ka use?

Answer: JSON data ko model object me convert aur object ko JSON me convert karna.