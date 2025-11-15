import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/core/constant/routes.dart';

abstract class ResetpassController extends GetxController {
  resetpassword();
  gotosuccessResetpass();
}

class ResetpassControllerImp extends ResetpassController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetpassword() {}

  @override
  gotosuccessResetpass() {
    Get.offNamed(AppRoutes.successresetpass);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
