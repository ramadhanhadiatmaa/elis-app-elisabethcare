import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../constants/color.dart';
import '../widgets/info_but_widget.dart';
import '../widgets/text_widget.dart';

class InformasiSection extends StatelessWidget {
  const InformasiSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        InfoButWidget(
                          title: "Antrian",
                          press: () => Get.toNamed(Routes.antrian),
                        ),
                        InfoButWidget(
                          title: "Poli",
                          press: () => Get.toNamed(Routes.poli),
                        ),
                        InfoButWidget(
                          title: "Kamar",
                          press: () => Get.toNamed(Routes.kamar),
                        ),
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
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cBlue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          TextWidget(
                            title: "INFORMASI",
                            size: 12,
                            weight: FontWeight.bold,
                            color: cWhite,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: cWhite,
                          ),
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
    );
  }
}
