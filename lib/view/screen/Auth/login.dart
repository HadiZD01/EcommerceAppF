import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/Auth/login_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/functions/alertexitapp.dart';
import 'package:untitled/core/functions/validinput.dart';
import 'package:untitled/view/widget/Auth/custombutton.dart';
import 'package:untitled/view/widget/Auth/customtextbodylogin.dart';
import 'package:untitled/view/widget/Auth/customtextformlogin.dart';
import 'package:untitled/view/widget/Auth/customtextsigninorup.dart';
import 'package:untitled/view/widget/Auth/customtexttitlelogin.dart';
import 'package:untitled/view/widget/Auth/logoAuth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: controller.fromstate,
        child: WillPopScope(
          onWillPop: alertexitapp,
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Logoauth(),
                const SizedBox(height: 50),
                Customtexttitlelogin(text: 'Welcome Back'),
                const SizedBox(height: 20),
                Customtextbodylogin(text: 'please sign in to your account'),
                const SizedBox(height: 40),
                Customtextformlogin(
                  valid: (val) {
                    return validinput(val!, 15, 25, 'email');
                  },
                  // mycontroller: controller,
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  suffixIcon: Icons.email,
                  mycontroller: controller.email,
                ),
                SizedBox(height: 20),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => Customtextformlogin(
                    valid: (val) {
                      return validinput(val!, 10, 20, 'password');
                    },
                    ontap: controller.IsShow(),
                    hide: controller.isshow,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    suffixIcon: Icons.lock,
                    mycontroller: controller.password,
                  ),
                ),
                SizedBox(height: 40),
                Custombutton(
                  text: 'Sign In',
                  onPressed: () {
                    controller.login();
                  },
                ),
                Customtextsigninorup(
                  text: 'Don\'t have an account?',
                  texttwo: 'Sign Up',
                  onPressed: () {
                    controller.goto();
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    controller.gotoforgetpassword();
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Color(ColorApp.primaryColor)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
