// Parent Class
class Animal {
  void eat() => print("Animal is eating");
}

// Child Class (Single Inheritance)
class Dog extends Animal {
  void bark() => print("Dog is barking");
}

// Multilevel Inheritance
class Mammal extends Animal {
  void walk() => print("Mammal is walking");
}
class Cat extends Mammal {
  void meow() => print("Cat is meowing");
}

void main() {
  var dog = Dog();
  dog.eat(); // Inherited
  dog.bark();

  var cat = Cat();
  cat.eat(); // From Animal
  cat.walk(); // From Mammal
  cat.meow(); // From Cat
}