import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/middlware/mymiddlware.dart';
import 'package:untitled/view/screen/Auth/forgetpassword/forgetpassword.dart';
import 'package:untitled/view/screen/Auth/login.dart';
import 'package:untitled/view/screen/Auth/forgetpassword/resetpassword.dart';
import 'package:untitled/view/screen/Auth/signup.dart';
import 'package:untitled/view/screen/Auth/forgetpassword/success_resetpass.dart';
import 'package:untitled/view/screen/Auth/success_signup.dart';
import 'package:untitled/view/screen/Auth/forgetpassword/verfiycode.dart';
import 'package:untitled/view/screen/Auth/verifyemail.dart';
import 'package:untitled/view/screen/language.dart';
import 'package:untitled/view/screen/onboarding.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoutes.langauge, page: () => Language(), middlewares: [Mymiddlware()]),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.onboarding, page: () => const Onboarding()),
  GetPage(name: AppRoutes.signup, page: () => const Signup()),
  GetPage(name: AppRoutes.verfiycode, page: () => const Verfiycode()),
  GetPage(name: AppRoutes.forgetpassword, page: () => const Forgetpassword()),
  GetPage(name: AppRoutes.resetpassword, page: () => const Resetpassword()),
  GetPage(name: AppRoutes.successresetpass, page: () => const SuccessReset()),
  GetPage(name: AppRoutes.successsignup, page: () => const SuccessSignup()),
  GetPage(name: AppRoutes.verfiyemail, page: () => const Verifyemail()),
];

//flutter system route

// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoutes.login: (context) => const Login(),
//   AppRoutes.onboarding: (context) => const Onboarding(),
//   AppRoutes.signup: (context) => const Signup(),
//   AppRoutes.verfiycode: (context) => const Verfiycode(),
//   AppRoutes.forgetpassword: (context) => const Forgetpassword(),
//   AppRoutes.resetpassword: (context) => const Resetpassword(),
//   AppRoutes.successresetpass:(context)=>const SuccessReset(),
//   AppRoutes.successsignup:(context)=>const SuccessSignup(),
//   AppRoutes.verfiyemail:(context)=>const Verifyemail(),
// };
