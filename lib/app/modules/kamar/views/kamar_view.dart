import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/text_widget.dart';
import '../controllers/kamar_controller.dart';

class KamarView extends GetView<KamarController> {
  const KamarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        title: const TextWidget(
            title: "Informasi Kamar",
            size: 12,
            weight: FontWeight.w500,
            color: cWhite),
        backgroundColor: cBlue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: cWhite,
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cWhite,
              boxShadow: [
                BoxShadow(
                  color: cGrey.withOpacity(0.5),
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                  offset: const Offset(1, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 140,
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                    color: cBlue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(title: "VIP", size: 16, weight: FontWeight.bold, color: cBlack,),
                    TextWidget(title: "Kapasitas", size: 12, weight: FontWeight.normal, color: cBlack,),
                    TextWidget(title: "Tersedia", size: 12, weight: FontWeight.normal, color: cBlack,),
                  ],
                ),
                const Spacer(),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextWidget(title: "", size: 16, weight: FontWeight.bold, color: cBlack,),
                    TextWidget(title: "12", size: 12, weight: FontWeight.normal, color: cBlack,),
                    TextWidget(title: "4", size: 12, weight: FontWeight.normal, color: cBlack,),
                  ],
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
