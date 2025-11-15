import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:flutter/material.dart';

abstract class LoginController extends GetxController {
  login();
  gotoforgetpassword();
  goto();
  IsShow();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> fromstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool? isshow = false;
  @override
  login() {
    var fromdata = fromstate.currentState;
    if (fromdata!.validate()) {
      print('valdie');
    } else {
      print('not valide');
    }
  }

  @override
  IsShow() {
    isshow == false ? true : false;
    print(' ddjdpidjpijdjdjdjd  $isshow');
    update();
  }

  @override
  gotoforgetpassword() {
    Get.toNamed(AppRoutes.forgetpassword);
  }

  @override
  goto() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
