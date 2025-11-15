import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:flutter/material.dart';

abstract class ForgetpassController extends GetxController {
  checkemail();
  gotoverfiycode();
}

class ForgetpassControllerImp extends ForgetpassController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  gotoverfiycode() {
    Get.offNamed(AppRoutes.verfiycode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
