import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/services/services.dart';

class Mymiddlware extends GetMiddleware {
  @override
  int get priority => 1;
  MyService myservice = Get.find();

  @override
  RouteSettings?  redirect(String? route) {
    if (myservice.sharedPreferences.getString(('seeit')) == '1') {
      print(myservice.sharedPreferences.getString('seeit'));
      return RouteSettings(name: AppRoutes.login);
    }
  }
}
