import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:app_educhain/core/utils/text_style.dart';
import 'package:app_educhain/features/educhain/educhain_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EduchainScreen extends GetView<EduchainController> {
  final EduchainController educhainController;
  const EduchainScreen(this.educhainController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Get.height * 0.3,
              padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Image.asset(ImageConstants.coming_soon),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Coming soon',
                style: TextAppStyle().semiBoldTextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w500),)
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
