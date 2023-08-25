abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      balance += balance * interestRate;
    } else {
      print("Insufficient funds for withdrawal.");
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance + overdraftLimit >= amount) {
      balance -= amount;
    } else {
      print("Insufficient funds for withdrawal.");
    }
  }
}

void main() {
  // Creating an instance of SavingsAccount
  var savingsAcc = SavingsAccount(1001, 5000, 0.05);
  print("Savings Account - Initial Balance: ${savingsAcc.balance}");
  savingsAcc.deposit(2000);
  print("After Deposit: ${savingsAcc.balance}");
  savingsAcc.withdraw(1500);
  print("After Withdrawal: ${savingsAcc.balance}");

  // Creating an instance of CurrentAccount
  var currentAcc = CurrentAccount(2001, 8000, 2000);
  print("\nCurrent Account - Initial Balance: ${currentAcc.balance}");
  currentAcc.deposit(3000);
  print("After Deposit: ${currentAcc.balance}");
  currentAcc.withdraw(12000);
  print("After Withdrawal: ${currentAcc.balance}");
}
