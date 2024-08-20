import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/file_string.dart';
import '../widgets/text_widget.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: cBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 30,
              child: Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  color: cSoftBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      100,
                    ),
                    bottomRight: Radius.circular(
                      100,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 60,
              child: Container(
                width: 100,
                height: 50,
                decoration: const BoxDecoration(
                  color: cSoftBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(
                      50,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 15,
              left: 15,
              child: Image(
                width: 30,
                height: 30,
                image: AssetImage(
                  logors,
                ),
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextWidget(
                        title: "098 289",
                        size: 26,
                        color: Colors.white,
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Spacer(),
                  TextWidget(
                    title: "RUSMAN",
                    size: 22,
                    color: cWhite,
                    weight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextWidget(
                    title: "24 JULI 1996",
                    size: 14,
                    color: cWhite,
                    weight: FontWeight.w300,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextWidget(
                    title: "DESA SEKURA",
                    size: 14,
                    color: cWhite,
                    weight: FontWeight.w300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}