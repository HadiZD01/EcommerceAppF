import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:flutter/material.dart';

abstract class VerfiyemailController extends GetxController {
  checkcode();
  gotosuccesssignup();
}

class VerfiyemailcontrollerImp extends VerfiyemailController {
  late TextEditingController code;

  @override
  checkcode() {}

  @override
  gotosuccesssignup() {
    Get.offNamed(AppRoutes.successsignup);
  }

  @override
  void onInit() {
    code = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    code.dispose();
    super.dispose();
  }
}
