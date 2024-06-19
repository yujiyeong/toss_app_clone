import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;

  const StockDetailScreen({
    super.key,
    required this.stockName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackGround,
      appBar: AppBar(
        title: stockName.text.white.make(),
        backgroundColor: context.appColors.appBarBackGround,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '주식 상세'.text.white.make(),
        ],
      ).p(20),
    );
  }
}
