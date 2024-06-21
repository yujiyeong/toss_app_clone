import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NumberDialog extends DialogWidget<int?> {
  NumberDialog({
    super.key,
    super.animation = NavAni.Fade,
    super.barrierDismissible = false,
  });

  @override
  State<NumberDialog> createState() => _TossNotificationDialogState();
}

class _TossNotificationDialogState extends State<NumberDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                '숫자를 입력해주세요.'.text.white.make(),
                TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                RoundButton(
                  text: '완료',
                  bgColor: context.appColors.lessImportant,
                  onTap: () {
                    final number = int.parse(controller.text);
                    widget.hide(number);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
