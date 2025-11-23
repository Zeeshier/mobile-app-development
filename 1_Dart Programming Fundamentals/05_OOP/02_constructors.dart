class Employee {
  String name;
  int salary;

  // Default Parameterized Constructor
  Employee(this.name, this.salary);

  // Named Constructor
  Employee.withBonus(this.name, this.salary) {
    salary += 5000;
  }
}

void main() {
  Employee e1 = Employee("Haseeb", 50000);
  Employee e2 = Employee.withBonus("Umer", 50000);

  print("${e1.name}'s Salary: ${e1.salary}");
  print("${e2.name}'s Salary: ${e2.salary}");
}