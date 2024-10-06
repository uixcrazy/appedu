import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:app_educhain/features/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Stack(
        fit: StackFit.expand, // Ensures the image covers the entire screen
        children: [
          // Background image
          Image.asset(
            ImageConstants.bg, // Replace with your image path
            fit: BoxFit.cover, // Ensures the image covers the screen
          ),
          // Centered text
          Center(
            child: Container(
              padding:const EdgeInsets.all(4),
              width: Get.width * 0.4,
              child: Image.asset(
              ImageConstants.logo1, // Replace with your image path
              fit: BoxFit.cover, // Ensures the image covers the screen
             ),
            ),
          ),
        ],
      ),
    );
  }
}
