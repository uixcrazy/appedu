import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/features/reading_pdf/reading_pdf_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadingPdfScreen extends GetView<ReadingPdfController> {
  const ReadingPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter PDF Viewer'),
        actions: <Widget>[
           IconButton(
            icon: const Icon(Icons.pageview),
            onPressed: () {
              _showGoToPageDialog(context);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              controller.pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
          // Nút tăng zoom
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () {
              controller.increaseZoom(); // Tăng zoom
            },
          ),
          // Nút giảm zoom
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () {
              controller.decreaseZoom(); // Giảm zoom
            },
          ),
          // Nút đổi màu nền
          IconButton(
            icon: const Icon(Icons.color_lens),
            onPressed: () {
              _showColorPicker(context); // Đổi màu nền
            },
          ),
          IconButton(
            icon: const Icon(Icons.swap_horiz),
            onPressed: () {
              controller.toggleScrollDirection(); // Chuyển đổi hướng cuộn
            },
          ),
        ],
      ),
      body: Obx(() => Container(
          color: controller.backgroundColor.value, // Màu nền của PDF
          child: Column(children: [
            Expanded(child:  ColorFiltered(
            colorFilter: ColorFilter.mode(
              controller.backgroundColor.value, // Lọc màu để tạo hiệu ứng sáng
              BlendMode.difference, // Thay đổi kiểu blend để tạo dark mode
            ),
            child: SfPdfViewer.network(
              'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
              key: controller.pdfViewerKey,
              controller: controller.pdfViewerController,
            ),
          )),
           Container(
            decoration: BoxDecoration(color: controller.backgroundColor.value),
             child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_left),
                      onPressed: () {
                        final newPage = controller.currentPage.value - 1;
                        if (newPage >= 0) {
                          controller.goToPage(newPage);
                        }
                      },
                    ),
                    Text(
                      '${controller.currentPage.value + 1} / ${controller.totalPages.value}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_right),
                      onPressed: () {
                        final newPage = controller.currentPage.value + 1;
                        if (newPage < controller.totalPages.value) {
                          controller.goToPage(newPage);
                        }
                      },
                    ),
                  ],
                ),
           ),
            
          ],))),
    );
  }

  void _showColorPicker(BuildContext context) {
    Color selectedColor = controller.backgroundColor.value;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Chọn màu nền'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: selectedColor,
              availableColors: const [
                Colors.white,
                Colors.black,
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.orange,
                Colors.purple,
                Colors.brown,
                Colors.grey,
                Colors.pink,
                Colors.teal,
                Color(0xFF123456),
                Color(0xFF654321),
              ],
              onColorChanged: (Color color) {
                selectedColor = color;
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Xác nhận'),
              onPressed: () {
                controller.changeBackgroundColor(selectedColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void _showGoToPageDialog(BuildContext context) {
    final TextEditingController pageController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Chuyển đến Trang'),
          content: TextField(
            controller: pageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Nhập số trang'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Xác nhận'),
              onPressed: () {
                final int? pageNumber = int.tryParse(pageController.text);
                if (pageNumber != null && pageNumber > 0 && pageNumber <= controller.totalPages.value) {
                  controller.goToPage(pageNumber - 1); // Chuyển đến trang, 0-based index
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
