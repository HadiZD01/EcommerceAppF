import 'package:flutter/material.dart';

class Customtextbodylogin extends StatelessWidget {
    final String text;
  const Customtextbodylogin({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}