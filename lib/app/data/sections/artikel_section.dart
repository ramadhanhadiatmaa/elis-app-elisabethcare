import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class ArtikelSection extends StatelessWidget {
  const ArtikelSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            title: "Artikel Kesehatan",
            size: 12,
            weight: FontWeight.w800,
            color: cBlue,
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 60,
            child: Row(children: [
              Container(
                width: 60,
                height: 60,
                color: cBlue,
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidgetArt(
                    title: "Judul artikel kesehatan qwe 23423422423 werwerwerwerwer",
                    size: 14,
                    weight: FontWeight.bold,
                    color: cBlue,
                    maxLength: 25,
                  ),
                  TextWidgetArt(
                    title: "subtitle artikel qweqeq qweqweqweq qweqweqw qweqeqwe qweqweqw qweqweqweq",
                    size: 10,
                    weight: FontWeight.normal,
                    color: cBlack,
                    maxLength: 35,
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
