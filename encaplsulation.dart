class Person {
  String? _name;

  String? get getName {
    return _name;
  }

  set setName(String? name) {
    _name = name;
  }
}

void main() {
  final per = Person();
  per.setName = "tomas";
  print(per.getName);
  per._name = "sample";
}
