import 'package:app_educhain/features/reading_pdf/reading_pdf_controller.dart';
import 'package:get/get.dart';

class ReadingPdfBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ReadingPdfController>( ReadingPdfController());
  }
}

