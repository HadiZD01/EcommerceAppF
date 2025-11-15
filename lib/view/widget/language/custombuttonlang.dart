import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';

class Custombuttonlang extends StatelessWidget {
  final String langeuage;
  final Function onpressed;

  const Custombuttonlang({
    super.key,
    required this.langeuage,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        onPressed: () {
          onpressed();
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          backgroundColor: Color(ColorApp.primaryColor),
        ),
        child: Text(
          langeuage,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
