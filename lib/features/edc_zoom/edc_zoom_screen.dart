import 'package:app_educhain/core/utils/color.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/icon_constatnt.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:app_educhain/features/edc_zoom/edc_zoom_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
part '_top_navigation.dart';
part '_program_section.dart';
part '_EDC_features_grid.dart';
part '_top_mentor.dart';
part '_numerology.dart';
class EDCZoomScreen extends GetView<EDCZoomController> {
  final EDCZoomController edcZoomController;
  const EDCZoomScreen(this.edcZoomController, {super.key});

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
              _topNavigationButtons(context),
              _programSection(context),
              _buildEDCFeaturesGrid(context),
              _topMentor(context),
              _numerolory(context),
            ],
          ),
        ),
      ),
    );
  }
}
