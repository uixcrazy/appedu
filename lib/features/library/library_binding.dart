import 'package:app_educhain/features/library/library_controller.dart';
import 'package:get/get.dart';

class LibraryBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LibraryController>(LibraryController());
  }
}

