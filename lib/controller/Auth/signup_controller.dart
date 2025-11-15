import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:flutter/material.dart';

abstract class SignupController extends GetxController {
  signup();
  goto();
}

class SignupControllerImp extends SignupController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  GlobalKey<FormState> fromstate = GlobalKey<FormState>();
  @override
  signup() {
    var fromdata = fromstate.currentState;
    if (fromdata!.validate()) {
      Get.offNamed(AppRoutes.verfiyemail);
      // Get.delete<SignupControllerImp>();  to delet data implement in controller 
    } else {
      print("not valide");
    }
  }

  @override
  goto() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
