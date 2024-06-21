import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_stock_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter/material.dart';

import 'w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            '인기 검색'.text.bold.white.size(16).make(),
            '오늘 ${DateTime.now().formattedTime} 기준'
                .text
                .color(context.appColors.lessImportant)
                .make(),
          ],
        ),
        const SizedBox(height: 20),
        ...popularStockList
            .mapIndexed(
              (e, index) => OpenContainer<bool>(
                closedColor: context.appColors.appBarBackGround,
                openColor: context.appColors.appBarBackGround,
                openBuilder: (BuildContext context, VoidCallback _) {
                  return StockDetailScreen(stockName: e.name);
                },
                closedBuilder: (BuildContext context, VoidCallback action) {
                  return PopularStockItem(
                    stock: e,
                    number: index + 1,
                  );
                },
              ),
            )
            .toList(),
      ],
    );
  }
}
