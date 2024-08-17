import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/constants/file_string.dart';
import '../../../data/widgets/onboard/onboard_page.dart';
import '../../../routes/app_pages.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final contC = Get.put(OnboardController());

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: contC.pageController,
              onPageChanged: contC.updatePageIndicator,
              children: const [
                OnboardPage(
                  image: ib1,
                  title: title1,
                  sub: sub1,
                ),
                OnboardPage(
                  image: ib2,
                  title: title2,
                  sub: sub2,
                ),
                OnboardPage(
                  image: ib3,
                  title: title3,
                  sub: sub3,
                ),
              ],
            ),
            Positioned(
              top: 20,
              right: 20,
              child: TextButton(
                onPressed: () {
                  Get.offAndToNamed(Routes.login);
                },
                child: const TextWidget(
                  title: "Skip",
                  size: 12,
                  weight: FontWeight.w300,
                  color: cBlack,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: ElevatedButton(
                onPressed: () => contC.skipPage(contC.currentPageIndex.value),
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: cBlue,
                    iconColor: cWhite),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 40,
              child: SmoothPageIndicator(
                controller: contC.pageController,
                onDotClicked: contC.dotNavigationClick,
                count: 3,
                effect: const ExpandingDotsEffect(
                    activeDotColor: cBlue, dotHeight: 6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
