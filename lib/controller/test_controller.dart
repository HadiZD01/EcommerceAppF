import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:untitled/core/class/requeststatus.dart';
import 'package:untitled/core/functions/handlingdata_controller.dart';
import 'package:untitled/data/datasource/Remote/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];
  late Requeststatus requeststatus;

  getdata() async {
    requeststatus = Requeststatus.loading;
    var response = await testData.getdata();
    requeststatus = handlingdata(response);
    if (Requeststatus.success == requeststatus) {
      return data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
