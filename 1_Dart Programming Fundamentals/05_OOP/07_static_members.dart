class MathUtils {
  // Static variable belongs to class, not object
  static const double pi = 3.1416;

  // Static method
  static double square(double num) {
    return num * num;
  }
}

void main() {
  // Accessed directly via Class name, no new MathUtils() needed
  print("Pi Value: ${MathUtils.pi}");
  print("Square of 4: ${MathUtils.square(4)}");
}