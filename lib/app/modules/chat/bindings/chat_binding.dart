import 'package:get/get.dart';
import 'package:myapp/app/modules/chat/controllers/chat_controller.dart';

class ChatBinding extends Bindings {
  @override
    void dependencies() {
      Get.lazyPut<ChatController>(
        () => ChatController(),
      );
    }
  }
