import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/benefit/benefits_dummy.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_point_button.dart';
import 'package:flutter/material.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackGround,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigatorHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            '혜택'.text.white.bold.size(20).make(),
            const SizedBox(height: 30),
            const PointButton(point: 251),
            const SizedBox(height: 20),
            '혜택 더 받기'.text.white.bold.size(16).make(),
            SizedBox(height: 10),
            ...benefitsDummy
                .map((e) => BenefitItem(
                      benefit: e,
                    ))
                .toList(),
          ],
        ).pSymmetric(h: 20),
      ),
    );
  }
}
