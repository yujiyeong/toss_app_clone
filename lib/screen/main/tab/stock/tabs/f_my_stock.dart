import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/screen/main/tab/stock/stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/tabs/w_interest_stock_list.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_long_button.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        const SizedBox(height: 20),
        myStock(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) {
    return Container(
      color: context.appColors.roundedLayoutBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          '계좌'.text.white.bold.size(16).make(),
          const SizedBox(height: 10),
          Row(
            children: [
              '443원'.text.white.size(26).bold.make(),
              const SizedBox(width: 4),
              const Arrow(
                color: Colors.white,
                size: 14,
              ),
              const Expanded(child: SizedBox()),
              Tap(
                onTap: () {
                  print('채우기 click');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: context.appColors.buttonBackground,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  child: '채우기'.text.white.size(12).make(),
                ),
              ),
            ],
          ),
          Line(color: context.appColors.buttonBackground).pSymmetric(v: 20),
          LongButton(
            title: '주문내역',
            onTap: () {
              print('주문내역 click');
            },
          ).pSymmetric(v: 10),
          LongButton(
            title: '판매수익',
            onTap: () {
              print('판매수익 click');
            },
          ).pSymmetric(v: 10),
          const SizedBox(height: 10),
        ],
      ).pSymmetric(h: 20),
    );
  }

  Widget myStock(BuildContext context) {
    bool isOpen = false;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: context.appColors.roundedLayoutBackground,
          child: Column(
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  '관심주식'.text.white.bold.size(16).make(),
                  '편집하기'
                      .text
                      .white
                      .bold
                      .color(context.appColors.lessImportant)
                      .size(16)
                      .make(),
                ],
              ),
              Tap(
                onTap: () {
                  isOpen = !isOpen;
                  print('toggle is open $isOpen');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      '기본'
                          .text
                          .semiBold
                          .color(context.appColors.lessImportant)
                          .make(),
                      Arrow(
                        direction: AxisDirection.up,
                        color: context.appColors.lessImportant,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        // ...myInterestStocks.map((e) => InterestStockList(stock: e)),
        const InterestStockList().pSymmetric(h: 20),
      ],
    );
  }
}
