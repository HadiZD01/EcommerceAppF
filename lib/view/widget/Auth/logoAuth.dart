import 'package:flutter/material.dart';
import 'package:untitled/core/constant/imageassets.dart';

class Logoauth extends StatelessWidget {
  const Logoauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Image.asset(Imageassets.logo, width: 150, height: 150),
    );
  }
}
