import 'package:app_educhain/core/utils/constants.dart';
import 'package:app_educhain/core/utils/network/network_controller.dart';
import 'package:get/get.dart';

mixin class NetworkManager {
  Future<bool> hasConnectNetwork() async {
    final networkController = Get.find<NetworkController>();
    if (networkController.connectionStatus.value != WIFI_NETWORK &&
        networkController.connectionStatus.value != MOBILE_NETWORK &&
        networkController.connectionStatus.value != INSTANCE_NETWORK) {
      return false;
    } else {
      return true;
    }
  }
}
