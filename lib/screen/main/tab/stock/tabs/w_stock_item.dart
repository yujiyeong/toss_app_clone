import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem({
    super.key,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: context.appColors.appBarBackGround,
      child: Row(
        children: [
          Image.asset(stock.stockImagePath, width: 44),
          const SizedBox(width: 10),
          stock.name.text.white.semiBold.make(),
          const Expanded(child: SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // (오늘의 가격 - 전날의 가격)%
              stock.todayPercentageString.text
                  .color(stock.isSame
                      ? context.appColors.lessImportant
                      : stock.isPlus
                          ? context.appColors.redText
                          : context.appColors.blueText)
                  .semiBold
                  .size(18)
                  .make(),
              '${stock.currentPrice.toComma()}원'
                  .text
                  .color(context.appColors.lessImportant)
                  .semiBold
                  .make(),
            ],
          )
        ],
      ),
    );
  }
}
