import 'package:app_educhain/features/edc_zoom/edc_zoom_controller.dart';
import 'package:get/get.dart';

class EDCZoomBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<EDCZoomController>(EDCZoomController());
  }
}

