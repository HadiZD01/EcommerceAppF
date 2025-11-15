import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:flutter/material.dart';

abstract class VerfiycodeController extends GetxController {
  checkcode();
  gotoresetpassword();
}

class VerfiycodeControllerImp extends VerfiycodeController {
  late TextEditingController code;

  @override
  checkcode() {}

  @override
  gotoresetpassword() {
    Get.offNamed(AppRoutes.resetpassword);
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
