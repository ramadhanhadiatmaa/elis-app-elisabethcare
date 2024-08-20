import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class DokterView extends StatelessWidget {
  const DokterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 260,
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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 3,
              left: 3,
              bottom: 3,
            ),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cBlue,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(
                title: "Nama Dokter",
                size: 16,
                weight: FontWeight.bold,
                color: cBlack,
              ),
              const TextWidget(
                title: "Spesialis Dokter",
                size: 12,
                weight: FontWeight.normal,
                color: cGrey,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 155,
                height: 30,
                child: ButtonWidgetWidthCus(
                  title: "DETAIL DOKTER",
                  tColor: cWhite,
                  bColor: cBlue,
                  size: 8,
                  rad: 10,
                  press: () {},
                  width: 155,
                  height: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}