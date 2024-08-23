import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';

import '../../../data/views/syarat_view.dart';
import '../../../data/widgets/logo_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  final syaratC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LogoWidget(),
            const SizedBox(
              height: 30,
            ),
            const TextWidget(
              title: "Log In",
              size: 24,
              weight: FontWeight.w600,
              color: cBlack,
            ),
            const TextWidget(
              title: "Silahkan login untuk melanjutkan aplikasi",
              size: 12,
              weight: FontWeight.w300,
              color: cGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Rekam Medis",
                  labelStyle: const TextStyle(color: cGrey),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                autocorrect: false,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Sandi",
                  labelStyle: const TextStyle(color: cGrey),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonWidgetWidth(
              title: "LOGIN",
              tColor: cWhite,
              bColor: cBlue,
              size: 12,
              rad: 30,
              width: MediaQuery.of(context).size.width,
              height: 30,
              press: () {
                Get.bottomSheet(
                  SyaratView(
                    syaratC: syaratC,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: TextWidget(
                  title: 'atau',
                  size: 12,
                  weight: FontWeight.w400,
                  color: cGrey),
            ),
            const SizedBox(
              height: 5,
            ),
            ButtonWidgetWidth(
              title: "GUEST",
              tColor: cWhite,
              bColor: cGreen,
              size: 12,
              rad: 30,
              press: () {
                Get.bottomSheet(
                  SyaratView(
                    syaratC: syaratC,
                  ),
                );
              },
              width: MediaQuery.of(context).size.width,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
