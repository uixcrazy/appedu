import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/features/account/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends GetView<AccountController> {
  final AccountController accountController;
  const AccountScreen(this.accountController, {super.key});

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
