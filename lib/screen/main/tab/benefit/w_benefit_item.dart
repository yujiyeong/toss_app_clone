import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 56;
    const double padding = 20;

    return Row(
      children: [
        Image.asset(
          benefit.imagePath,
          width: imageSize,
          height: imageSize,
        ),
        const SizedBox(width: padding),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.white.size(14).make(),
            benefit.title.text.color(context.appColors.blueText).size(16).make(),
          ],
        ).pSymmetric(v: padding),
      ],
    );
  }
}
