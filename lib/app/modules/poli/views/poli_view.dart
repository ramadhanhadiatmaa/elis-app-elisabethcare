import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/text_widget.dart';
import '../controllers/poli_controller.dart';

class PoliView extends GetView<PoliController> {
  const PoliView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        title: const TextWidget(
            title: "Informasi Poliklinik",
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
    );
  }
}
