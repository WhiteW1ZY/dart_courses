import 'classes/bank_account.dart';

void main() {
  var bankAccount = BankAccount("40817810099910004312", 24.12);

  print(bankAccount.getBalance());

  bankAccount.deposit(10);
  bankAccount.withdraw(50);
  bankAccount.withdraw(-1);
  bankAccount.withdraw(20);

  print(bankAccount);
  bankAccount.withdraw(bankAccount.getBalance());
  print(bankAccount);
}
