import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../views/dokter_view.dart';
import '../widgets/text_widget.dart';

class DokterSection extends StatelessWidget {
  const DokterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            title: "Dokter Kami",
            size: 12,
            weight: FontWeight.w800,
            color: cBlue,
          ),
          SizedBox(
            height: 5,
          ),
          DokterView(),
        ],
      ),
    );
  }
}
