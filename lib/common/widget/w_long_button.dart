import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const LongButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: Row(
        children: [
          title.text.white.size(16).make(),
          const Expanded(child: SizedBox()),
          Arrow(color: context.appColors.lessImportant, size: 12),
        ],
      ),
    );
  }
}
