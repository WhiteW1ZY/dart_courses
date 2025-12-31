class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    if (amount < 0) {
      print("Отмена операции. Некорректная сумма пополнения: $amount");
      return;
    }
    _balance += amount;
    print("Операция пополнения выполнена успешно");
  }

  void withdraw(double amount) {
    if (amount < 0) {
      print("Отмена операции. Некорректная сумма снятия: $amount");
      return;
    } else if (amount > _balance) {
      print("Не удалось обналичить сумму: $amount");
      return;
    }
    _balance -= amount;
    print("Операция обналичивания выполнена успешно");
  }

  double getBalance() => _balance;

  @override
  String toString() =>
      "account number $_accountNumber balance: ${getBalance()}";
}
