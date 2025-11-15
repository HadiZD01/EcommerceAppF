import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  MyService myService = Get.find();

  changeLanguage(String langcode) {
    Locale locale = Locale(langcode);
    myService.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);
    print('language++++${myService.sharedPreferences.getString('lang')}');
  }

  @override
  void onInit() {
    if (myService.sharedPreferences.getString('lang') == '') {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    if (myService.sharedPreferences.getString('lang') == 'ar') {
      language = Locale('ar');
    }
    if (myService.sharedPreferences.getString('lang') == 'en') {
      language = Locale('en');
    }
    super.onInit();
  }
}
