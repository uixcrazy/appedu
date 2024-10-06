import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showError(String message) {
  Get.snackbar(
    'error'.tr,
    message.tr + " " + 'try_again'.tr,
    backgroundColor: AppColor.redColor,
    colorText: AppColor.whiteColor,
    duration: const Duration(seconds: 5),
  );
}

void showSuccess(String message) {
  Get.snackbar(
    'success'.tr,
    message.tr,
    duration: const Duration(seconds: 5),
  );
}
Future<void> showAppDialog({
  String? title,
  String? content,
  Function? onConfirm,
  Function? onCancel,
  bool isShowConfirm = true,
  bool isShowCancel = true,
}) async {
  await Get.dialog(
    barrierDismissible: false,
    Dialog(
      backgroundColor: Colors.transparent,
      child: WillPopScope(
        onWillPop: () async => true,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              if (title == null)
                Text('notifications'.tr,
                    style: TextAppStyle().titleStyleLarge()),
              if (title != null)
                Text(title.tr,
                    style: TextAppStyle()
                        .titleStyleLarge()
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 20)),
              const SizedBox(height: 20),
              if (content != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                      child: Text(
                    content,
                    textAlign: TextAlign.justify,
                  )),
                ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (isShowConfirm)
                    TextButton(
                      child: Text('continue'.tr,
                          style: TextAppStyle().normalTextStyleLarge()),
                      onPressed: () async {
                        if (onConfirm != null) {
                          onConfirm();
                        }
                      },
                    ),
                  if (isShowCancel)
                    TextButton(
                      child: Text(
                        'close'.tr,
                        style: TextAppStyle().normalTextStyleLarge(),
                      ),
                      onPressed: () {
                        if (onCancel != null) {
                          onCancel();
                        }
                      },
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
