import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/features/reading_book/reading_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadingScreen extends GetView<ReadingController> {
  const ReadingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        title: Text(
          'Sách',
          style: TextStyle(
              color: AppColor.whiteColor, fontWeight: FontWeight.w500),
        ),
        backgroundColor: AppColor.primaryColor,
        actions: [
          GestureDetector(
              onTap: () {
                print('Search clicked');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Icon(
                  Icons.search,
                  color: AppColor.whiteColor,
                ),
              )),
          GestureDetector(
              onTap: () {
                print('Brightness adjusted');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Icon(
                  Icons.wb_sunny,
                  color: AppColor.whiteColor,
                ),
              )),
          GestureDetector(
              onTap: () {
                controller.toggleMode();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Obx(() {
                  return Icon(
                    controller.isHorizontalMode.value
                        ? Icons.swap_horiz
                        : Icons.swap_vert,
                    color: AppColor.whiteColor,
                  );
                }),
              )),
        ],
      ),
      body: Obx(() {
        return controller.isHorizontalMode.value
            ? PageView.builder(
                controller: controller.pageController,
                onPageChanged: (index) {
                  controller.setCurrentPage(index);
                },
                itemCount: controller.bookPages.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        controller.bookPages[index],
                        style: TextStyle(color: AppColor.whiteColor, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              )
            : ListView.builder(
                itemCount: controller.bookPages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      controller.bookPages[index],
                      style: TextStyle(color: AppColor.whiteColor, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              );
      }),
    );
  }
}
