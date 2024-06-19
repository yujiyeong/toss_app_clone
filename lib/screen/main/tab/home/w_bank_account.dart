import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? '${account.bank.name} 통장')
                  .text
                  .white
                  .size(12)
                  .make(),
              ('${account.balance}원').text.white.size(18).make(),
            ],
          ).pSymmetric(h: 20, v: 10),
        ),
        RoundedContainer(
          borderRadius: 8,
          backgroundColor: context.appColors.buttonBackground,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: '송금'.text.white.light.make(),
        )
      ],
    );
  }
}
