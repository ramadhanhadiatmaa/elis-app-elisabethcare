import 'package:flutter/material.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class AntrianSection extends StatelessWidget {
  const AntrianSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.435,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cGreen,
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          title: "Antrian Admisi",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        TextWidget(
                          title: "999",
                          size: 30,
                          weight: FontWeight.bold,
                          color: cWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.435,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cGreen,
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          title: "Antrian Panggil",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        TextWidget(
                          title: "1",
                          size: 30,
                          weight: FontWeight.bold,
                          color: cWhite,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidgetWidth(
              title: "Refresh",
              tColor: cWhite,
              bColor: cBlue,
              size: 12,
              rad: 10,
              press: () {},
              width: 120,
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
