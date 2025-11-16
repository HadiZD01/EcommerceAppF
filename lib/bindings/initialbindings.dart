import 'package:get/get.dart';
import 'package:untitled/core/class/crudrequest.dart';

class Initialbindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
