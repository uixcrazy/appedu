import 'package:app_educhain/features/educhain/educhain_controller.dart';
import 'package:get/get.dart';

class EduchainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<EduchainController>(EduchainController());
  }
}

