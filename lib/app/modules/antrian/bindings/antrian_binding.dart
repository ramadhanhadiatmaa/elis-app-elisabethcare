import 'package:get/get.dart';

import '../controllers/antrian_controller.dart';

class AntrianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AntrianController>(
      () => AntrianController(),
    );
  }
} 