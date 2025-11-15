import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en': {
      'Next': 'Next',
      'Choose Your Language': 'Choose Your Language',
      'En': 'En',
      'Ar': 'Ar',
      'Welcome Back': 'Welcome Back',
      'Sign In': 'Sign In',
    },
    'ar': {
      'Next': 'التالي',
      'Choose Your Language': 'اختر لغتك',
      'En': 'انجليزي',
      'Ar': 'عربي',
      'Welcome Back': 'مرحبا بعودتك',
      'Sign In': 'تسجيل الدخول',
    },
  };
}
