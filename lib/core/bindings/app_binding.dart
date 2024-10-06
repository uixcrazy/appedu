import 'package:app_educhain/core/utils/network/network_controller.dart';
import 'package:get/get.dart';
class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}