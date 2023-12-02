// objects to respond to the same method calls in different ways.

class Animal {
  makeSound() {
    print('make sound');
  }
}

class Cat extends Animal {
  @override
  makeSound() {
    print('meow');
    //
  }
}

class Dog extends Animal {
  @override
  makeSound() {
    print('dog sound');
  }
}

void main() {
  final cat = Cat();
  cat.makeSound(); //meow

  final dog = Dog();
  dog.makeSound(); //dog sound
}
