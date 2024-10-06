import 'dart:async';
import 'package:app_educhain/core/controllers/app_controller.dart';
import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends AppController {
  @override
  Future<void> onInit() async {
    super.onInit();
    await loadInitSplashScreen();
  }

  Future<void> loadInitSplashScreen() async {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.Main);
    });
  }
}
