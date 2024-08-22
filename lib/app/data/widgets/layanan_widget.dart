import 'package:flutter/material.dart';

import '../constants/color.dart';
import 'text_widget.dart';

class LayananWidget extends StatelessWidget {
  const LayananWidget({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextWidget(
            title: title,
            size: 9,
            weight: FontWeight.normal,
            color: cBlack,
          ),
        ],
      ),
    );
  }
}

class LayananWidgetFlex extends StatelessWidget {
  const LayananWidgetFlex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            color: cWhite,
          ),
        ],
      ),
    );
  }
}
