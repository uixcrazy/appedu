import 'dart:async';
import 'package:app_educhain/core/controllers/app_controller.dart';
import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:app_educhain/core/utils/resource/assets_constant/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EDCZoomController extends AppController {
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;
  int _currentPage = 0;
  @override
  Future<void> onInit() async {
    super.onInit();
  }
 List<String> features = [
      'Online course', 'Scholarship', 'Learning diary', 'Numerology',
      'Horoscopes', 'Apply for job', 'Blockchain library', 'Study abroad',
      'Mining', 'Personal orientation', 'Teacher recruitment',
    ];
  final List<Map<String, String>> mentors = [
      {'name': 'Benny Balance', 'image': ImageConstants.top_mentor, 'rating': '4.5', 'reviews': '100'},
      {'name': 'Anna Advice', 'image': ImageConstants.top_mentor, 'rating': '4.7', 'reviews': '85'},
      {'name': 'Chris Coach', 'image': ImageConstants.top_mentor, 'rating': '4.8', 'reviews': '120'},
    ];
}
