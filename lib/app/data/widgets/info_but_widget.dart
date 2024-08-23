import 'package:flutter/material.dart';

import '../constants/color.dart';
import 'text_widget.dart';

class InfoButWidget extends StatelessWidget {
  InfoButWidget({
    super.key,
    required this.title,
    required this.press,
    required this.image,
  });

  final String title, image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: press,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
          TextWidget(
            title: title,
            size: 10,
            weight: FontWeight.bold,
            color: cBlack,
          ),
        ],
      ),
    );
  }
}
