import 'package:app_educhain/features/reading_book/reading_controller.dart';
import 'package:get/get.dart';

class ReadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ReadingController>(ReadingController());
  }
}

