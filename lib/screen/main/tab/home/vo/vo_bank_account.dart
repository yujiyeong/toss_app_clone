import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  // 계좌 은행
  final Bank bank;

  // 계좌 번호
  // final String accountNumber;

  // 계좌 소유주
  // final String accountHolderName;

  // 현재 잔액량
  int balance;

  // 계좌 별명
  // 꼭 필요한 변수가 아니기 때문에 nullable 처리
  final String? accountTypeName;

  BankAccount({
    required this.bank,
    // required this.accountNumber,
    // required this.accountHolderName,
    required this.balance,
    this.accountTypeName,
  });
}
