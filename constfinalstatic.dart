void main() {
  // const -compiletime -The value assigned to a const variable must be known at compile-time
  const String name = "sample";
  print(name);
  //final -runtime -assigned a value only once
  final String name2;
  name2 = "sample2";
  print(name2);
  //static  - class-level members: variables and nethods
  print(Sample.name);
}

class Sample {
  static String name = "sample3";
}
