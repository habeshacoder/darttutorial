void outerFunction() {
  int outerVariable = 10;

  void innerFunction() {
    int innerVariable = 20;

    print(outerVariable); // Accessible: prints 10
    print(innerVariable); // Accessible: prints 20
  }

  innerFunction();
}

void main() {
  outerFunction();
}
