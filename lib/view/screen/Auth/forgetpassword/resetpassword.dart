import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/Auth/resetpass_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/view/widget/Auth/custombutton.dart';
import 'package:untitled/view/widget/Auth/customtextbodylogin.dart';
import 'package:untitled/view/widget/Auth/customtextformlogin.dart';
import 'package:untitled/view/widget/Auth/customtextsigninorup.dart';
import 'package:untitled/view/widget/Auth/customtexttitlelogin.dart';
import 'package:untitled/view/widget/Auth/logoAuth.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpassControllerImp controller = Get.put(ResetpassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Color(ColorApp.darkColor),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            Customtexttitlelogin(text: 'Reset Your Password'),
            const SizedBox(height: 20),
            Customtextbodylogin(
              text:
                  'Please enter your new password below to reset your password',
            ),
            const SizedBox(height: 40),
            Customtextformlogin(
                            valid: (val){

              },
              // mycontroller: controller,
              hintText: 'Enter your new password',
              labelText: 'New Password',
              suffixIcon: Icons.lock,
              mycontroller: controller.password,
            ),
            SizedBox(height: 20),
            Customtextformlogin(
                            valid: (val){

              },
              // mycontroller: controller,
              hintText: 'Confirm your new password',
              labelText: 'Confirm Password',
              suffixIcon: Icons.lock,
              mycontroller: controller.repassword,
            ),
            SizedBox(height: 40),
            Custombutton(
              text: 'save',
              onPressed: () {
                controller.gotosuccessResetpass();
              },
            ),
          ],
        ),
      ),
    );
  }
}
