import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/core/class/requeststatus.dart';
import 'package:untitled/core/functions/checkinternet.dart';

class Crud {
  Future<Either<Requeststatus, Map>> postdata(String url, Map data) async {
    try {
      if (await checkinternet()) {
        var result = await http.post(Uri.parse(url), body: data);
        if (result.statusCode == 200 || result.statusCode == 201) {
          Map datareply = jsonDecode(result.body);
          return Right(datareply);
        } else {
          return left(Requeststatus.servererror);
        }
      } else {
        return left(Requeststatus.interneterror);
      }
    } catch (e) {
      return left(Requeststatus.servererror);
    }
  }
}
