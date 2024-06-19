import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;

  const PopularStockItem({
    super.key,
    required this.stock,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: number.text.color(context.appColors.lessImportant).size(18).make(),
        ),
        const SizedBox(width: 20),
        Expanded(child: stock.name.text.white.size(18).make()),
        stock.todayPercentageString.text
            .color(stock.isSame
                ? context.appColors.lessImportant
                : stock.isPlus
                    ? context.appColors.redText
                    : context.appColors.blueText)
            .size(18)
            .make()
      ],
    ).pSymmetric(v: 24);
  }
}
