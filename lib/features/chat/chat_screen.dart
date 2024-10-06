import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/features/chat/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends GetView<ChatController> {
  final ChatController chatController;
  const ChatScreen(this.chatController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'hello'.tr,
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
