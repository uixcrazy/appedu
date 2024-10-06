import 'dart:async';
import 'package:app_educhain/core/controllers/app_controller.dart';
import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:app_educhain/features/account/account_controller.dart';
import 'package:app_educhain/features/chat/chat_controller.dart';
import 'package:app_educhain/features/edc_zoom/edc_zoom_controller.dart';
import 'package:app_educhain/features/educhain/educhain_controller.dart';
import 'package:app_educhain/features/library/library_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends AppController {
  PageController controller = PageController(initialPage:3);
  RxInt currentPage = 3.obs;
  RxInt selectedIndexPage = 3.obs;
  ChatController chatController = ChatController();
  LibraryController libraryController = LibraryController();
  EduchainController educhainController = EduchainController();
  EDCZoomController edcZoomController = EDCZoomController();
  AccountController accountController = AccountController();
  @override
  Future<void> onInit() async {
    super.onInit();
     Get.put<EduchainController>(educhainController);
     Get.put<ChatController>(chatController);
     Get.put<LibraryController>(libraryController);
     Get.put<EDCZoomController>(edcZoomController);
     Get.put<AccountController>(accountController);
  }
}
