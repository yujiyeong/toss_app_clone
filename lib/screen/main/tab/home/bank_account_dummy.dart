import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan = BankAccount(
  bank: bankShinhan,
  balance: 1000000,
  accountTypeName: '신한 주거래 우대통장(저축예금)',
);

final bankAccountShinhan2 = BankAccount(
  bank: bankShinhan,
  balance: 2000000,
  accountTypeName: '저축예금',
);

final bankAccountShinhan3 = BankAccount(
  bank: bankShinhan,
  balance: 3000000,
  accountTypeName: '저축예금',
);

final bankAccountToss = BankAccount(
  bank: bankToss,
  balance: 4000000,
);

final bankAccountKakao = BankAccount(
  bank: bankKakao,
  balance: 5000000,
  accountTypeName: '입출금통장',
);

final List<BankAccount> bankAccountsList = [
  bankAccountShinhan,
  bankAccountShinhan2,
  bankAccountToss,
  bankAccountKakao,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
  bankAccountToss,
  bankAccountShinhan2,
  bankAccountKakao,
  bankAccountToss,
  bankAccountShinhan3,
  bankAccountKakao,
];

main() {
  // print(bankAccountsList[0].accountTypeName);

  for (final item in bankAccountsList) {
    print(item.accountTypeName);
  }
}
