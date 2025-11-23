// Abstract Class
abstract class Shape {
  void draw(); // Abstract method (no body)
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a Circle");
  }
}

// Polymorphism Example
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat Meows");
  }
}

void main() {
  // Abstraction
  Shape c = Circle();
  c.draw();

  // Polymorphism
  Animal a = Cat();
  a.makeSound(); // Calls the overridden method
}