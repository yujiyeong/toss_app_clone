import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/notification/d_toss_notification.dart';
import 'package:fast_app_base/screen/notification/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackGround,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: '알림'.text.white.semiBold.size(21).make(),
            backgroundColor: context.appColors.appBarBackGround,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                onTap: () {
                  TossNotificationDialog([
                    notificationDummies[0],
                    notificationDummies[1],
                  ]).show();
                },
              ),
              childCount: notificationDummies.length,
            ),
          ),
        ],
      ),
    );
  }
}
