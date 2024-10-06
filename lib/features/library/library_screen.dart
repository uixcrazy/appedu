import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/icon_constatnt.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:app_educhain/features/library/library_controller.dart';
import 'package:app_educhain/features/library/model_demo/book.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
part '_search.dart';
part '_fifer_book.dart';
part '_show_book_carouse.dart';
part '_list_book.dart';
part '_continue.dart';
part '_recommended_books.dart';
part '_banner.dart';
part '_curriculum.dart';
part '_topics.dart';
part '_popular_books.dart';
part '_new_books.dart';
part '_books_on_promotion.dart';
part '_religion.dart';

class LibraryScreen extends GetView<LibraryController> {
  final LibraryController libraryController;
  const LibraryScreen(this.libraryController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _search(context),
              _fiterBook(context),
              _showBookCarouse(context),
              _listBook(context),
              _continue(context),
              _recommended_books(context),
              _banner(context),
              _curriculum(context),
              _topics(context),
              _popular_books(context),
              _new_books(context),
              _booksOnPromotion(context),
              _religion(context)
            ],
          ),
        ),
      ),
    );
  }
}
