import 'package:untitled/core/class/crudrequest.dart';
import 'package:untitled/urlapi.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  Future getdata() async {
    var response = await crud.postdata(ApiUrl.server, {});
    response.fold((l) => l, (r) => r);
  }
}
