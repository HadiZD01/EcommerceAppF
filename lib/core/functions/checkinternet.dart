import 'dart:io';

checkinternet() async {
  try {
    var result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty) {
      return true;
    }
  } on SocketException catch (e) {
    print(e.message);
    return false;
  }
}
