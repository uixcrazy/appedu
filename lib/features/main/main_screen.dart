import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/common/commonWidget.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/icon_constatnt.dart';
import 'package:app_educhain/core/utils/text_style.dart';
import 'package:app_educhain/features/account/account_screen.dart';
import 'package:app_educhain/features/chat/chat_screen.dart';
import 'package:app_educhain/features/edc_zoom/edc_zoom_screen.dart';
import 'package:app_educhain/features/educhain/educhain_screen.dart';
import 'package:app_educhain/features/library/library_screen.dart';
import 'package:app_educhain/features/main/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});
  List<Widget> _buildScreens() {
    return [
      EduchainScreen(controller.educhainController),
      ChatScreen(controller.chatController),
      EDCZoomScreen(controller.edcZoomController),
      LibraryScreen(controller.libraryController),
      AccountScreen(controller.accountController),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      bottomNavigationBar: _buildBottomNavigationBar(),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: appBarWidget(title: ''),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.controller,
          onPageChanged: (index) {
            controller.currentPage.value = index;
          },
          children: _buildScreens(),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
      child: BottomAppBar(
        color: AppColor.secondaryColor,
        height: kBottomNavigationBarHeight + 32,
        elevation: 0,
        padding: const EdgeInsets.all(0),
        surfaceTintColor: AppColor.secondaryColor,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: const EdgeInsets.only(bottom: 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildBottomNavItem(IconConstants.bar1,IconConstants.bar1_1, 'Education', 0),
                _buildBottomNavItem(IconConstants.bar2,IconConstants.bar2_1,'Chat', 1),
                _buildBottomNavItem(IconConstants.bar3,IconConstants.bar3_1, 'EDC Zoom', 2),
                _buildBottomNavItem(IconConstants.bar4,IconConstants.bar4_1, 'Library', 3),
                _buildBottomNavItem(IconConstants.bar5,IconConstants.bar5_1, 'Account', 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(String urlActive,String url, String label, int index) {
    return GestureDetector(
      onTap: () {
        controller.controller.jumpToPage(index);
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Background for selected item
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF124984), // #124984
                      Color(0xFF369C09), // #369C09
                    ],
                    stops: [0.0505, 1.0], // Corresponds to 5.05% and 100%
                  ),
                  color: controller.currentPage.value == index
                      ? Colors.green // Active background color
                      : const Color.fromARGB(0, 47, 23, 23),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(0),
                      width: 24,
                      child: Image.asset(controller.currentPage.value == index ? url : urlActive),),
                    if (controller.currentPage.value == index) ...[
                      const SizedBox(
                          width: 8), // Spacing between icon and label
                      Text(
                        label.tr,
                        style: TextAppStyle().titleStyleLight().copyWith(
                              fontSize: 14,
                              color: Colors.white, // Active text color
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.25,
                            ),
                      )
                    ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
