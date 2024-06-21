import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackGround,
      appBar: AppBar(
        title: '설정'.text.white.bold.make(),
        backgroundColor: context.appColors.appBarBackGround,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          // switch
          Obx(
            () => SwitchMenu(
              title: '푸시 설정',
              isOn: Prefs.isPushOnRx.get(),
              onChanged: (isOn) {
                Prefs.isPushOnRx(isOn);
              },
            ),
          ),
          // slider
          Obx(
            () => Slider(
              value: Prefs.sliderPosition.get(),
              onChanged: (value) {
                Prefs.sliderPosition.set(value);
              },
            ),
          ),
          // date time

          // number
        ],
      ),
    );
  }
}
