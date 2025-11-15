import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled/controller/Auth/forgetpass_controller.dart';
import 'package:untitled/controller/Auth/signup_controller.dart';
import 'package:untitled/controller/Auth/verfiycode_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/view/widget/Auth/custombutton.dart';
import 'package:untitled/view/widget/Auth/customtextbodylogin.dart';
import 'package:untitled/view/widget/Auth/customtextformlogin.dart';
import 'package:untitled/view/widget/Auth/customtextsigninorup.dart';
import 'package:untitled/view/widget/Auth/customtexttitlelogin.dart';
import 'package:untitled/view/widget/Auth/logoAuth.dart';

class Verfiycode extends StatelessWidget {
  const Verfiycode({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiycodeControllerImp controller = Get.put(VerfiycodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Verfication Code',
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
            Customtexttitlelogin(text: 'Check Code'),
            const SizedBox(height: 20),
            Customtextbodylogin(
              text:
                  'Please enter the verification code sent to your email address',
            ),
            const SizedBox(height: 40),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Color(ColorApp.primaryColor),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.gotoresetpassword();
              }, // end onSubmit
            ),
            SizedBox(height: 40),
            Custombutton(
              text: 'Verify',
              onPressed: () {
                controller.gotoresetpassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
