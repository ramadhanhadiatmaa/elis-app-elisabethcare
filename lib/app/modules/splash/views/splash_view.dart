import 'package:flutter/material.dart';
import 'package:myapp/app/data/constants/color.dart';

import 'package:get/get.dart';

import '../../../data/constants/file_string.dart';
import '../../../data/widgets/text_widget.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);

  final splashC = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashC.SplashScreen();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: cBlue,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 125,
                    height: 128,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(logo),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      title: 'Elisa',
                      size: 24,
                      weight: FontWeight.w300,
                      color: cWhite,
                    ),
                    TextWidget(
                      title: 'CARE',
                      size: 24,
                      weight: FontWeight.bold,
                      color: cGreen,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(logors),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const TextWidget(
                    title: "Rumah Sakit Santa Elisabeth Sambas",
                    size: 10,
                    weight: FontWeight.w300,
                    color: cWhite,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
