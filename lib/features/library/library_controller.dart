import 'dart:async';
import 'package:app_educhain/core/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LibraryController extends AppController {
  final searchController = TextEditingController().obs;
  List<String> categories = [
    "New",
    "New & Hot",
    "Popular",
    "Trending",
    "Recommended",
    "Top Picks",
    "Editor's Choice",
    "Hot Releases",
    "Best Sellers",
    "Must Read"
  ];
  @override
  Future<void> onInit() async {
    super.onInit();
  }
  List<String> features = [
      'Online course', 'Scholarship', 'Learning diary', 'Numerology',
      'Horoscopes', 'Apply for job', 'Blockchain library', 'Study abroad',
      'Mining', 'Personal orientation', 'Teacher recruitment',
    ];
}
