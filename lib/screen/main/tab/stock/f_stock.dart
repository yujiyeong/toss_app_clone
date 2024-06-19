import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/tabs/f_my_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/tabs/f_today_discovery.dart';
import 'package:fast_app_base/screen/main/tab/stock/w_image_button.dart';
import 'package:flutter/material.dart';

import 'setting/s_setting.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackGround,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.appColors.appBarBackGround,
            actions: [
              ImageButton(
                onTap: () {
                  context.showSnackbar('검색');
                  Nav.push(SearchStockScreen());
                },
                imagePath: 'assets/image/icon/stock_search.png',
              ),
              const SizedBox(width: 20),
              ImageButton(
                onTap: () {
                  context.showSnackbar('캘린더');
                },
                imagePath: 'assets/image/icon/stock_calendar.png',
              ),
              const SizedBox(width: 20),
              ImageButton(
                onTap: () {
                  // context.showSnackbar('세팅');
                  Nav.push(
                    SettingScreen(),
                  );
                },
                imagePath: 'assets/image/icon/stock_settings.png',
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                title.pSymmetric(h: 20),
                tabBar,
                currentIndex == 0
                    ? MyStockFragment()
                    : TodayDiscoveryFragment(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          '토스증권'.text.white.bold.size(24).make(),
          const SizedBox(width: 20),
          'S&P 500'
              .text
              .color(context.appColors.lessImportant)
              .semiBold
              .size(14)
              .make(),
          const SizedBox(width: 10),
          3919.29
              .toComma()
              .text
              .color(context.appColors.redText)
              .semiBold
              .size(13)
              .make(),
        ],
      );

  Widget get tabBar => Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            labelPadding: const EdgeInsets.symmetric(vertical: 20),
            splashBorderRadius: BorderRadius.circular(24),
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            tabs: [
              '내 주식'.text.white.semiBold.make(),
              '오늘의 발견'.text.white.semiBold.make(),
            ],
          ),
          const Line(),
        ],
      );

  Widget get myAccount => Placeholder();

  Widget get myStocks => Placeholder();
}
