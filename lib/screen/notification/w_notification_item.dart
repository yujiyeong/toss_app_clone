import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_toss_notification.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TossNotification notification;
  final VoidCallback onTap;

  const NotificationItemWidget({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double verticalPadding = 16;
  static const double widthPadding = 10;
  static const double iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap:widget.onTap,
      child: Container(
        color: widget.notification.isRead
            ? context.appColors.appBarBackGround
            : context.appColors.unreadColor,
        padding: const EdgeInsets.symmetric(vertical: verticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.notification.type.iconPath,
                  width: iconWidth,
                ),
                widget.notification.type.name.text
                    .color(context.appColors.lessImportant)
                    .size(13)
                    .light
                    .make(),
                const Expanded(child: SizedBox()),
                timeago
                // .format(widget.notification.time, locale: context.locale.languageCode)
                    .format(widget.notification.time, locale: 'ko')
                    .text
                    .size(13)
                    .color(context.appColors.lessImportant)
                    .make(),
              ],
            ),
            widget.notification.description.text.white
                .make()
                .pOnly(left: iconWidth),
          ],
        ).pSymmetric(h: widthPadding),
      ),
    );
  }
}
