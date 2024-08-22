import 'package:flutter/material.dart';

import '../constants/color.dart';
import 'text_widget.dart';

class InfoButWidget extends StatelessWidget {
  InfoButWidget({super.key, required this.title, required this.press});

  final String title;
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
          SizedBox(
            width: 40,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                backgroundColor: cBlue,
              ),
              onPressed: press,
              child: const Text(""),
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
