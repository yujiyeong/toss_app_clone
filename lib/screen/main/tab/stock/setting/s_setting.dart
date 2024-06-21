import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/d_number.dart';
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
          Obx(
            () => BigButton(
              text:
                  '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}',
              onTap: () async {
                final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(90.days),
                    lastDate: DateTime.now().add(90.days));
                if (date != null) {
                  Prefs.birthday.set(date);
                }
              },
            ),
          ),
          // number
          Obx(
            () => BigButton(
              text: '저장된 숫자 ${Prefs.number.get()}',
              onTap: () async {
                final number = await NumberDialog().show();
                if (number != null) {
                  Prefs.number.set(number);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
