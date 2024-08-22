import 'package:flutter/material.dart';
import 'package:myapp/app/data/widgets/layanan_widget.dart';

import '../constants/color.dart';
import '../constants/file_string.dart';
import '../widgets/text_widget.dart';

class LayananSection extends StatelessWidget {
  const LayananSection({
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
            title: "Layanan Kami",
            size: 12,
            weight: FontWeight.w800,
            color: cBlue,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              LayananWidget(title: text1, image: img1),
              LayananWidget(title: text2, image: img2),
              LayananWidget(title: text3, image: img3),
              LayananWidget(title: text4, image: img4),
              LayananWidget(title: text5, image: img5),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              LayananWidget(title: text6, image: img6),
              LayananWidget(title: text7, image: img7),
              LayananWidget(title: text8, image: img8),
              LayananWidget(title: text9, image: img9),
              LayananWidget(title: text10, image: img10),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              LayananWidget(title: text11, image: img11),
              LayananWidget(title: text12, image: img12),
              LayananWidgetFlex(),
              LayananWidgetFlex(),
              LayananWidgetFlex(),
            ],
          ),
        ],
      ),
    );
  }
}
