import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/icon_constatnt.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:app_educhain/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget appBarWidget(
    {Function()? onTap, required String title, bool isHiddenBack = false}) {
  return AppBar(
    leadingWidth: 0,
    titleSpacing: 0.0,
    automaticallyImplyLeading: false,
    backgroundColor: AppColor.primaryColor,
    title: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              print('Home');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              width: 120,
              child: Image.asset(ImageConstants.logo),
            ),
          ),
          GestureDetector(
            onTap: () {
             Get.toNamed(AppRoutes.Notification);
            },
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor.withOpacity(0.2),
                    borderRadius:
                        BorderRadius.circular(25), // Màu nền của container
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(
                            28, 203, 203, 203), // Màu shadow với alpha
                        offset:
                            Offset(0, 2), // Dịch chuyển theo chiều dọc (2px)
                        blurRadius: 7.1, // Độ mờ của shadow (7.1px)
                        spreadRadius: 0, // Bán kính mở rộng của shadow (0px)
                      ),
                    ],
                    // Thiết lập borderRadius hoặc các thuộc tính khác nếu cần
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: AppColor.whiteColor,
                    size: 24,
                  ),
                ),
                Positioned(
                  right: 4,
                  top: 2,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColor.redColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    centerTitle: true,
  );
}

PreferredSizeWidget appBarWidget1(
    {Function()? onTap, required String title, bool isHiddenBack = false}) {
  return AppBar(
    leadingWidth: 0,
    titleSpacing: 0.0,
    automaticallyImplyLeading: false,
    backgroundColor: AppColor.primaryColor,
    title: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.whiteColor,
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
                const WidgetSpan(
                    child: SizedBox(
                  width: 12,
                )),
                TextSpan(
                    text: 'Back'.tr,
                    style: TextStyle(color: AppColor.whiteColor, fontSize: 18))
              ])),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Gio Hang');
            },
            child: Stack(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(
                            255, 255, 255, 0.11), // Màu trắng với độ trong suốt
                        offset:
                            Offset(0, 2), // Dịch chuyển theo chiều dọc (2px)
                        blurRadius: 7.1, // Độ mờ của shadow (7.1px)
                        spreadRadius: 0, // Bán kính mở rộng của shadow (0px)
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(
                    IconConstants.eiCart,
                    width: 24,
                    height: 24,
                  ),
                ),
                Positioned(
                  right: 2,
                  top: 2,
                  child: Stack(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: AppColor.blueColor_3,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          child: Text('12', style: TextStyle(color: AppColor.whiteColor, fontSize: 12),),
                          ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    centerTitle: true,
  );
}
