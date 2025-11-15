import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:untitled/controller/Auth/signup_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/functions/validinput.dart';
import 'package:untitled/view/widget/Auth/custombutton.dart';
import 'package:untitled/view/widget/Auth/customtextbodylogin.dart';
import 'package:untitled/view/widget/Auth/customtextformlogin.dart';
import 'package:untitled/view/widget/Auth/customtextsigninorup.dart';
import 'package:untitled/view/widget/Auth/customtexttitlelogin.dart';
import 'package:untitled/view/widget/Auth/logoAuth.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Color(ColorApp.darkColor),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: controller.fromstate,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Customtexttitlelogin(text: 'Create an Account'),
              const SizedBox(height: 20),
              Customtextbodylogin(text: 'please sign up to continue'),
              const SizedBox(height: 40),
              Customtextformlogin(
                valid: (val) {
                  return validinput(val!, 5, 15, 'username');
                },
                // mycontroller: controller,
                hintText: 'Enter your username',
                labelText: 'Username',
                suffixIcon: Icons.person,
                mycontroller: controller.username,
              ),
              SizedBox(height: 20),
              Customtextformlogin(
                valid: (val) {
                  return validinput(val!, 1, 25, "email");
                },
                // mycontroller: controller,
                hintText: 'Enter your email',
                labelText: 'Email',
                suffixIcon: Icons.email,
                mycontroller: controller.email,
              ),
              SizedBox(height: 20),
              Customtextformlogin(
                type: TextInputType.numberWithOptions(decimal: true),
                valid: (val) {
                  return validinput(val!, 00, 20, "phone");
                },
                // mycontroller: controller,
                hintText: 'Enter your phone',
                labelText: 'Phone',
                suffixIcon: Icons.phone,
                mycontroller: controller.phone,
              ),
              SizedBox(height: 20),
              Customtextformlogin(
                valid: (val) {
                  return validinput(val!, 10, 20, "password");
                },
                // mycontroller: controller,
                hintText: 'Enter your password',
                labelText: 'Password',
                suffixIcon: Icons.lock,
                mycontroller: controller.password,
              ),
              SizedBox(height: 40),
              Custombutton(
                text: 'Sign Up',
                onPressed: () {
                  controller.signup();
                },
              ),
              Customtextsigninorup(
                text: 'Already have an account?',
                texttwo: 'Sign in',
                onPressed: () {
                  controller.goto();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
