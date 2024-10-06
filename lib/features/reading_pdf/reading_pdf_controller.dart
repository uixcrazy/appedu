import 'package:app_educhain/core/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadingPdfController extends AppController {
  final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();
  final PdfViewerController pdfViewerController = PdfViewerController();
  RxBool isHorizontalScroll = true.obs; 
   RxInt totalPages = 0.obs; // Tổng số trang
    RxInt currentPage = 0.obs;
// Giá trị zoom mặc định
  RxDouble zoomLevel = 1.0.obs;

  // Màu nền mặc định
  Rx<Color> backgroundColor = Colors.white.obs;

  // Hàm tăng zoom
  void increaseZoom() {
    if (zoomLevel.value < 3.0) {
      zoomLevel.value += 0.25;
      pdfViewerController.zoomLevel = zoomLevel.value;
    }
  }

  // Hàm giảm zoom
  void decreaseZoom() {
    if (zoomLevel.value > 1.0) {
      zoomLevel.value -= 0.25;
      pdfViewerController.zoomLevel = zoomLevel.value;
    }
  }

  // Chuyển đổi màu nền (Dark/Light mode)
  void toggleBackgroundColor() {
    if (backgroundColor.value == Colors.white) {
      backgroundColor.value = Colors.black;
    } else {
      backgroundColor.value = Colors.white;
    }
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    pdfViewerController.addListener(() {
      currentPage.value = pdfViewerController.pageNumber;
      totalPages.value = pdfViewerController.pageCount;
    });
  }
  void changeBackgroundColor(Color color) {
    backgroundColor.value = color;
  }
   void toggleScrollDirection() {
    isHorizontalScroll.value = !isHorizontalScroll.value;
  }
   void goToPage(int pageNumber) {
    pdfViewerController.jumpToPage(pageNumber);
  }
}
