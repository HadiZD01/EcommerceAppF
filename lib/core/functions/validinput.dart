import 'package:get/get_utils/get_utils.dart';

validinput(String val, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'not valide username';
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'not valide phone number';
    }
  }

  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'not valide email';
    }
  }
  if (type == 'password') {}
  if (val.isEmpty) {
    return 'cant be empty';
  }

  if (val.length > max) {
    return 'cant be large than $max';
  }

  if (val.length < min) {
    return 'cant be less than $min';
  }
}

select() {
  print('object');
}
