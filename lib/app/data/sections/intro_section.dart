import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../constants/color.dart';
import '../widgets/text_widget.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.profil),
            icon: const Icon(
              Icons.account_circle_outlined,
              color: cBlue,
            ),
          ),
          const TextWidget(
            title: "Hallo, Rusman!",
            size: 14,
            weight: FontWeight.w700,
            color: cBlack,
          ),
        ],
      ),
    );
  }
}
