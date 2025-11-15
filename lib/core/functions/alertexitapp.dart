import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertexitapp() {
  Get.defaultDialog(
    title: 'Alert',
    middleText: 'Do you want leave',
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text('Confirme'),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text('Cancel'),
      ),
    ],
  );
  return Future.value(true);
}
