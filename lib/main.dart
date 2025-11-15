import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/localization/changelocallang.dart';
import 'package:untitled/core/services/services.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/view/screen/language.dart';
// import 'package:untitled/view/screen/onboarding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Onboarding(),
      home: Language(),
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(ColorApp.darkColor),
          ),
          bodyLarge: const TextStyle(
            fontSize: 16,
            color: Color(ColorApp.greyColor),
          ),
          headlineMedium: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(ColorApp.greyColor),
            
          ),
        ),
      ),
      // home: const MyHomePage(title: 'Flutter Demoklhilhihpijjpi  Page'),
      // routes: routes,
      getPages: routes,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Onboarding(),
//       theme: ThemeData(
//         textTheme: TextTheme(
//           headlineLarge: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Color(ColorApp.darkColor),
//           ),
//           bodyLarge: const TextStyle(
//             fontSize: 16,
//             color: Color(ColorApp.greyColor),
//           ),
//         ),
//       ),

//       routes: routes,
//     );
//   }
// }
