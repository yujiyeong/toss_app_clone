import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';

class StockSearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const StockSearchAppbar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight,
        color: context.appColors.appBarBackGround,
        child: Row(
          children: [
            Tap(
              onTap: () {
                Nav.pop(context);
              },
              child: const Arrow(
                direction: AxisDirection.left,
                color: Colors.white,
                size: 20,
              ).pSymmetric(h: 20),
            ),
            Expanded(
              child: TextFieldWithDelete(
                controller: controller,
                texthint: '\'커피\'를 검색해보세요',
                textInputAction: TextInputAction.search,
                onEditingComplete: (){
                  debugPrint('검색 확인버튼');
                  AppKeyboardUtil.hide(context);
                },
              ).pOnly(top: 6),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize 사이즈 정의
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
