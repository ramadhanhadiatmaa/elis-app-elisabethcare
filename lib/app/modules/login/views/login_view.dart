import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/constants/file_string.dart';
import 'package:myapp/app/data/widgets/button_widget.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(logoblue),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const TextWidget(
                    title: "Elisa",
                    size: 20,
                    weight: FontWeight.w300,
                    color: cBlue,
                  ),
                  const TextWidget(
                    title: "CARE",
                    size: 20,
                    weight: FontWeight.bold,
                    color: cGreen,
                  ),
                ],
              ),
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
                  keyboardType: TextInputType.name,
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
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3707514932.
              const SizedBox(
                height: 40,
              ),
              ButtonWidgetWidth(
                title: "LOGIN",
                tColor: cWhite,
                bColor: cBlue,
                size: 12,
                rad: 30,
                press: () {},
                width: MediaQuery.of(context).size.width,
                height: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(child:  TextWidget(title: 'atau', size: 10, weight: FontWeight.w400, color: cGrey)),
              const SizedBox(
                height: 10,
              ),
              ButtonWidgetWidth(
                title: "GUEST",
                tColor: cWhite,
                bColor: cGreen,
                size: 12,
                rad: 30,
                press: () {},
                width: MediaQuery.of(context).size.width,
                height: 30,
              ),
            ],
          ),
        ));
  }
}
