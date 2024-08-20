import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';
import 'package:myapp/app/modules/home/controllers/home_controller.dart';

import '../../../data/sections/antrian_section.dart';
import '../../../data/sections/card_section.dart';
import '../../../data/sections/dokter_section.dart';
import '../../../data/sections/intro_section.dart';
import '../../../data/sections/layanan_section.dart';
import '../../../data/sections/poli_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntroSection(),
                  CardSection(),
                  AntrianSection(),
                  PoliSection(),
                  DokterSection(),
                  LayananSection(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: TextWidget(
                      title: "Kamar Rawat Inap",
                      size: 12,
                      weight: FontWeight.w800,
                      color: cBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
