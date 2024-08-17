import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  OnboardController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void skipPage(index) {
    currentPageIndex.value = index+1;
    pageController.jumpToPage(index+1);
  }
}
