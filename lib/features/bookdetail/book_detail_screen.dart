import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/common/commonWidget.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/icon_constatnt.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:app_educhain/features/bookdetail/book_detail_controller.dart';
import 'package:app_educhain/features/library/model_demo/book.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
part '_show_bookdetail_carouse.dart';
part '_infor_bookdetail.dart';
class BookDetailScreen extends GetView<BookDetailController> {
  const BookDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: appBarWidget1(title: ''),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _showBookDetailCarouse(context),
              _inforBookDetail(context),
            ],
          ),
        ),
      ),
    );
  }
}
