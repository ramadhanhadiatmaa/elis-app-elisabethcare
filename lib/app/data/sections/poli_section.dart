import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class PoliSection extends StatelessWidget {
  const PoliSection({
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
            title: "Layanan Poliklinik",
            size: 12,
            weight: FontWeight.w800,
            color: cBlue,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 130,
            height: 140,
            decoration: BoxDecoration(
                color: cWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: cGrey.withOpacity(0.3),
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                    offset: const Offset(1, 1),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CircleAvatar(
                  backgroundColor: cBlue,
                  radius: 30,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextWidget(
                  title: "Poli Penyakit Dalam",
                  size: 10,
                  weight: FontWeight.bold,
                  color: cBlack,
                  align: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 130,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: cBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                      child: TextWidget(
                          title: "BUKA",
                          size: 12,
                          weight: FontWeight.bold,
                          color: cWhite)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
