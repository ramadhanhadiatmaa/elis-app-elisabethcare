import 'package:get/get.dart';

import '../controllers/kamar_controller.dart';

class KamarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KamarController>(
      () => KamarController(),
    );
  }
}