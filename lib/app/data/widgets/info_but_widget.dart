import 'package:flutter/material.dart';

import '../constants/color.dart';
import 'text_widget.dart';

class InfoButWidget extends StatelessWidget {
  InfoButWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: cBlue,
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
