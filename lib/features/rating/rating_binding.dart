import 'package:app_educhain/features/rating/rating_controller.dart';
import 'package:get/get.dart';

class RatingBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<RatingController>(RatingController());
  }
}

