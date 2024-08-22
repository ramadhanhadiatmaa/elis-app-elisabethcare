import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/sections/antrian_section.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';
import 'package:myapp/app/modules/antrian/controllers/antrian_controller.dart';

class AntrianView extends GetView<AntrianController> {
  const AntrianView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        title: const TextWidget(
            title: "Informasi Antrian",
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
      body: const AntrianSection(),
    );
  }
}
