import 'package:untitled/core/class/crudrequest.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  Future getdata()async{
    var response = await crud.postdata(, {});
  }
}
