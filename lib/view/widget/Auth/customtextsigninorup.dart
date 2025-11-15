import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/constant/routes.dart';

class Customtextsigninorup extends StatelessWidget {
  final String text;
  final String texttwo;
  final void Function()? onPressed;
  const Customtextsigninorup({
    super.key,
    required this.text,
    required this.texttwo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        TextButton(
          onPressed: () {
            onPressed!();
          },
          child: Text(
            texttwo,
            style: TextStyle(color: Color(ColorApp.primaryColor)),
          ),
        ),
      ],
    );
  }
}
