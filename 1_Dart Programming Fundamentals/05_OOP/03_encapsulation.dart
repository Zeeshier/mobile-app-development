class BankAccount {
  double _balance = 0; // Private variable (starts with underscore)

  // Getter
  double get balance => _balance;

  // Setter with validation
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Error: Balance cannot be negative!");
    }
  }
}

void main() {
  var acc = BankAccount();
  acc.balance = 100; // Uses setter
  print(acc.balance); // Uses getter
  
  acc.balance = -50; // Rejected by setter validation
}