import 'package:app_educhain/features/account/account_controller.dart';
import 'package:get/get.dart';

class AccountBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AccountController>(AccountController());
  }
}

