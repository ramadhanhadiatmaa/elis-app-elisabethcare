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
import '../../../data/widgets/info_but_widget.dart';

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
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntroSection(),
                  CardSection(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: SizedBox(
                      height: 80,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              const Spacer(),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cWhite,
                                    boxShadow: [
                                      BoxShadow(
                                        color: cGrey.withOpacity(0.3),
                                        spreadRadius: 3.0,
                                        blurRadius: 3.0,
                                        offset: const Offset(1, 1),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InfoButWidget(title: "Antrian"),
                                      InfoButWidget(title: "Poli"),
                                      InfoButWidget(title: "Kamar"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cBlue,
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        TextWidget(
                                          title: "INFORMASI",
                                          size: 12,
                                          weight: FontWeight.bold,
                                          color: cWhite,
                                        ),
                                        Spacer(),
                                        Icon(Icons.arrow_right_outlined,
                                            color: cWhite)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
