import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled/controller/Auth/forgetpass_controller.dart';
import 'package:untitled/controller/Auth/signup_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/view/widget/Auth/custombutton.dart';
import 'package:untitled/view/widget/Auth/customtextbodylogin.dart';
import 'package:untitled/view/widget/Auth/customtextformlogin.dart';
import 'package:untitled/view/widget/Auth/customtextsigninorup.dart';
import 'package:untitled/view/widget/Auth/customtexttitlelogin.dart';
import 'package:untitled/view/widget/Auth/logoAuth.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpassControllerImp controller = Get.put(ForgetpassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Forget Password',
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
            Customtexttitlelogin(text: 'Check your email'),
            const SizedBox(height: 20),
            Customtextbodylogin(
              text:
                  'please enter your email address to receive a verification code',
            ),
            const SizedBox(height: 40),
            Customtextformlogin(
                            valid: (val){

              },
              // mycontroller: controller,
              hintText: 'Enter your email',
              labelText: 'Email',
              suffixIcon: Icons.email,
              mycontroller: controller.email,
            ),
            SizedBox(height: 40),
            Custombutton(
              text: 'Check',
              onPressed: () {
                controller.gotoverfiycode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
