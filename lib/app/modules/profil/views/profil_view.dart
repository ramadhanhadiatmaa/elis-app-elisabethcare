import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const TextWidget(
                  title: "Biodata Pasien",
                  size: 20,
                  weight: FontWeight.bold,
                  color: cBlue,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: "Nama Lengkap",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "NIK",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "No BPJS",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "No Rekam Medis",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "Alamat",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: ":",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: ":",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: ":",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: ":",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: ":",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: "Nama Pasien",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "1234567890",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "987654321",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "123456",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          title: "Alamat Pasien",
                          size: 12,
                          weight: FontWeight.w400,
                          color: cBlack,
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: TextWidget(
                    title: "Riwayat Pengobatan",
                    size: 20,
                    weight: FontWeight.bold,
                    color: cBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cGrey.withOpacity(0.3)),
                  child: const Center(
                    child: TextWidget(
                      title: "24-07-2024",
                      size: 14,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: TextWidget(
                    title: "Riwayat Diagnosa",
                    size: 20,
                    weight: FontWeight.bold,
                    color: cBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cGrey.withOpacity(0.3)),
                  child:  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const TextWidget(
                                title: "R50.9 Fever",
                                size: 14,
                                weight: FontWeight.w500,
                                color: cBlack,
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width*0.7,
                                height: 1,
                                color: cBlack.withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const TextWidget(
                                title: "J45 Asthma",
                                size: 14,
                                weight: FontWeight.w500,
                                color: cBlack,
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width*0.7,
                                height: 1,
                                color: cBlack.withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const TextWidget(
                                title: "I51.7 Cardiomegally",
                                size: 14,
                                weight: FontWeight.w500,
                                color: cBlack,
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width*0.7,
                                height: 1,
                                color: cBlack.withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                ButtonWidgetWidthCus(title: "LOG OUT", tColor: cWhite, bColor: cBlue, size: 12, rad: 10, press: () => Get.offAllNamed(Routes.login), width: MediaQuery.of(context).size.width, height: 40,),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
