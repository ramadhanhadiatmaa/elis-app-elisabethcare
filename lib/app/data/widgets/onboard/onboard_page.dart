import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../text_widget.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({
    super.key,
    required this.image,
    required this.title,
    required this.sub,
  });

  final String image, title, sub;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextWidget(
              title: title,
              size: 24,
              weight: FontWeight.bold,
              color: cBlue,
            ),
            TextWidget(
              title: sub,
              size: 12,
              weight: FontWeight.w300,
              color: cBlack,
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
