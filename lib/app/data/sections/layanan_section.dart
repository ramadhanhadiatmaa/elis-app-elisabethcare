import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class LayananSection extends StatelessWidget {
  const LayananSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            title: "Layanan Kami",
            size: 12,
            weight: FontWeight.w800,
            color: cBlue,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cWhite,
                boxShadow: [
                  BoxShadow(
                    color: cGrey.withOpacity(0.3),
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                    offset: const Offset(1, 1),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: cBlue,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextWidget(
                  title: "Ambulance",
                  size: 10,
                  weight: FontWeight.w400,
                  color: cBlack,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
