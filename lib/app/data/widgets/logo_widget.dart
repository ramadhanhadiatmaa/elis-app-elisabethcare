import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/file_string.dart';
import 'text_widget.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(logoblue),
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        const TextWidget(
          title: "Elisa",
          size: 20,
          weight: FontWeight.w300,
          color: cBlue,
        ),
        const TextWidget(
          title: "CARE",
          size: 20,
          weight: FontWeight.bold,
          color: cGreen,
        ),
      ],
    );
  }
}
