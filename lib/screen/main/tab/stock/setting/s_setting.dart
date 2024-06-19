import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
