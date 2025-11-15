import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';

class Custombutton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const Custombutton({super.key, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(ColorApp.primaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.symmetric(vertical: 15),
      ),
      child: Text(text!, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
