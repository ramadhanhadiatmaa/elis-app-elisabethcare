import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';
import 'package:myapp/app/modules/login/controllers/login_controller.dart';

import '../../routes/app_pages.dart';
import '../constants/color.dart';
import '../constants/file_string.dart';
import '../widgets/text_widget.dart';

class SyaratView extends StatelessWidget {
  SyaratView({
    super.key,
    required this.syaratC,
  });

  final LoginController syaratC;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      decoration: const BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25.0, bottom: 10, left: 25, right: 25),
        child: Column(
          children: [
            const TextWidget(
              title:
                  "Syarat & Ketentuan Penggunaan dan Pemberitahuan Privasi ElisaCare App",
              size: 14,
              weight: FontWeight.bold,
              color: cBlack,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(
              title: syarat,
              size: 10,
              weight: FontWeight.normal,
              color: cBlack,
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidgetLink(
              title: "Syarat & Ketentuan Penggunaan",
              size: 10,
              weight: FontWeight.normal,
              color: cBlue,
              press: () => Get.toNamed(Routes.poli),
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidgetLink(
              title: "Pemberitahuan Privasi",
              size: 10,
              weight: FontWeight.normal,
              color: cBlue,
              press: () => Get.toNamed(Routes.poli),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => Column(
                children: [
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: syaratC.isAgree.value,
                    onChanged: (value) {
                      syaratC.isAgree.toggle();
                    },
                    title: const TextWidget(
                      title: agree,
                      color: cBlack,
                      size: 10,
                      weight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidgetWidth(
              title: "SETUJU",
              tColor: cWhite,
              bColor: cBlue,
              size: 12,
              rad: 10,
              press: () => Get.offAndToNamed(Routes.home),
              width: 100,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
