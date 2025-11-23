mixin A {
  void methodA() => print("Class A");
}

mixin B {
  void methodB() => print("Class B");
}

// Class C uses features of both A and B
class C with A, B {
  void methodC() => print("Class C");
}

void main() {
  var obj = C();
  obj.methodA();
  obj.methodB();
  obj.methodC();
}