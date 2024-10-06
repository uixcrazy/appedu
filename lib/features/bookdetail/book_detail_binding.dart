import 'package:app_educhain/features/bookdetail/book_detail_controller.dart';
import 'package:get/get.dart';

class BookDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<BookDetailController>(BookDetailController());
  }
}

