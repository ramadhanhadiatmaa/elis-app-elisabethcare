import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {


  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "RSU SANTA ELISABETH SAMBAS",
    initialRoute: Routes.splash,
    getPages: AppPages.routes,
    defaultTransition: Transition.noTransition,
  ));
}
