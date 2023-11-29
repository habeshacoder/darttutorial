class Person {
  int? age;
  String? name;
  Person(this.age, this.name);
  void printName() {
    print(name);
    print(age);
  }
}

void main() {
  final person = Person(23, "john");
  person.printName();
}
