import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  

  Future SplashScreen() async {
    await Future.delayed(
      const Duration(
        milliseconds: 3000,
      ),
    );

    final box = GetStorage();

    await GetStorage.init();

    if (box.read('dataCache').isNotEmpty && box.read("dataLogin").isNotEmpty) {
    Get.offAllNamed(Routes.home);
  } else {
    Get.offAllNamed(Routes.login);
  }
  }

  
}
