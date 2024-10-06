import 'package:app_educhain/features/chat/chat_controller.dart';
import 'package:get/get.dart';

class ChatBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ChatController>(ChatController());
  }
}

