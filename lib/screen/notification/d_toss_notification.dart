import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_toss_notification.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class TossNotificationDialog extends DialogWidget {
  final List<TossNotification> notifications;

  TossNotificationDialog(
    this.notifications, {
    super.key,
    super.animation = NavAni.Bottom,
    // false 면 Dialog 밖 화면을 클릭해도 Dialog 닫히지 않음
    // super.barrierDismissible = false,
  });

  @override
  State<TossNotificationDialog> createState() => _TossNotificationDialogState();
}

class _TossNotificationDialogState extends State<TossNotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        // return Scaffold(
        //   backgroundColor: Colors.transparent,
        //   body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...widget.notifications
              .map(
                (e) => NotificationItemWidget(
                  notification: e,
                  onTap: () {
                    widget.hide();
                  },
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
