import 'package:untitled/core/class/requeststatus.dart';

handlingdata(response) {
  if (response is Requeststatus) {
    return response;
  } else {
    return Requeststatus.success;
  }
}
