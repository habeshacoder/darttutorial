class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating.');
  }
}
//

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  void bark() {
    print('$name is barking.');
  }
}

//
class Cat extends Animal {
  int lives;

  Cat(String name, this.lives) : super(name);

  void meow() {
    print('$name is meowing.');
  }
}

//
void main() {
  Dog dog = Dog('Buddy', 'Labrador');
  dog.eat(); // Output: Buddy is eating.
  dog.bark(); // Output: Buddy is barking.

  Cat cat = Cat('Whiskers', 9);
  cat.eat(); // Output: Whiskers is eating.
  cat.meow();
  // Output: Whiskers is meowing.
}







































//encapsulation


