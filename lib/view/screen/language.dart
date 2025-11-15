import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/localization/changelocallang.dart';
import 'package:untitled/view/screen/onboarding.dart';
// import 'package:untitled/core/constant/color.dart';
import 'package:untitled/view/widget/language/custombuttonlang.dart';
import 'package:untitled/routes.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.grey.shade100],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose Your Language'.tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Container(height: 25),
            Custombuttonlang(
              langeuage: "En".tr,
              onpressed: () {
                controller.changeLanguage('en');
                print('eNGLISH');
                Get.toNamed(AppRoutes.onboarding);
              },
            ),
            Custombuttonlang(
              langeuage: "Ar".tr,
              onpressed: () {
                controller.changeLanguage('ar');
                print('ARABIC');
                Get.toNamed(AppRoutes.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
