void main() {
  //positional
  // sample(int age, String name) {
  //   print('age');
  // }

  // sample(23, "sample");
  // //named
  // sample2({int? age, required String name}) {
  //   print('age');
  // }

  // sample2(
  //   name: "sample2",
  // );
  // //optional
  // sample3({age, required String name}) {
  //   print('age');
  // }

  // sample2(
  //   name: "sample2",
  // );

  // sample4(int age, [String? name]) {
  //   print('age');
  // }

  // sample4(23);

  //default values
  // sample5(int age, [String name = "minidevcamp"]) {
  //   print('age');
  //   print(name);
  // }

  // sample5(23);

  sample6({int? age, String name = "minidevcamp"}) {
    print('age');
    print(name);
  }

  sample6(age: 23);
}
