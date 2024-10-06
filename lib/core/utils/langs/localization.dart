import 'dart:ui';
import 'package:app_educhain/core/utils/langs/translations/en_US.dart';
import 'package:app_educhain/core/utils/langs/translations/vi_VN.dart';
import 'package:get/get.dart';

class MyTranslations extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocaleVi = Locale('vi', 'VN');
  static const fallbackLocaleEn = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'vi_VN': vi_VN,
        'en_US': en_US,
      };
}