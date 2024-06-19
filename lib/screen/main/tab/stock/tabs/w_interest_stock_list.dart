import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/tabs/w_stock_item.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';
import 'package:flutter/material.dart';

import '../stock_dummy.dart';

class InterestStockList extends StatelessWidget {

  const InterestStockList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks.map((e) => StockItem(stock: e)).toList(),
      ],
    );
  }
}
