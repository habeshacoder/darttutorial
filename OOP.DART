//class and objects
class Person {
  String name;
  int age;
Print('sample');
  void sayHello() {
    print('Hello, my name is $name');
  }
}

void main() {
  var person = Person();
  Print('then');
  person.name = 'John';
  person.age = 25;
  person.sayHello(); // Output: Hello, my name is John
}





//constructors
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name');
  }
}

void main() {
  var person = Person('John', 25);
  person.sayHello(); // Output: Hello, my name is John
}




//inheritnace
class Animal {
  void makeSound() {
    print('The animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('The dog barks');
  }
}

void main() {
  var dog = Dog();
  dog.makeSound(); // Output: The dog barks
}


//polymorphism
abstract class Animal {
  void makeSound();
}
class Dog extends Animal {
  @override
  void makeSound() {
    print('The dog barks');
  }
}
class Cat extends Animal {
  @override
  void makeSound() {
    print('The cat meows');
  }
}
void main() {
  var dog = Dog();
  var cat = Cat();
  Animal animal1 = dog;
  Animal animal2 = cat;
  animal1.makeSound(); // Output: The dog barks
  animal2.makeSound(); // Output: The cat meows
}




//encapsulation
class BankAccount {
  int _balance = 0; // Private member

  void deposit(int amount) {
    _balance += amount;
  }

  int getBalance() {
    return _balance;
  }
}

void main() {
  var account = BankAccount();
  account.deposit(100);
  print('Balance: ${account.getBalance()}'); // Output: Balance: 100
}

