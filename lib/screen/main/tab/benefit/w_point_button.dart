import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.color(context.appColors.lessImportant).size(16).make(),
        const Expanded(child: SizedBox()),
        "$point원".text.white.bold.size(16).make(),
        const SizedBox(width: 10.0),
        Arrow(color: context.appColors.lessImportant),
      ],
    );
  }
}
