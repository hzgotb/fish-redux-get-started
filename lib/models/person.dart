class Person {
  final String name;
  final int age;
  final String avatar;

  Person(Map<String, dynamic> json) :
    name = json['name'],
    age = json['age'],
    avatar = json['avatar'];
}