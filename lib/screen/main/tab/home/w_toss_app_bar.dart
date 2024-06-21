import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';

class TossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppBar.appBarHeight,
      // 테마에 맞는 색으로 맞춰 변경하기 위해서
      color: context.appColors.appBarBackGround,
      child: Row(
        children: [
          const Width(10),
          Image.asset(
            'assets/image/icon/toss.png',
            height: 30,
          ),
          Expanded(
            child: Container(),
          ),
          Image.asset(
            'assets/image/icon/map_point.png',
            height: 30,
          ),
          const Width(10),
          Tap(
            onTap: () {
              Nav.push(const NotificationScreen());
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/image/icon/notification.png',
                  height: 30,
                ),
                if (_showRedDot)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
              ],
            )
                .animate()
                .shake(duration: 2000.ms, hz: 4),
          ),
          const Width(10),
        ],
      ),
    );
  }
}
