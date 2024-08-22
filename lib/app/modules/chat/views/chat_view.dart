import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/constants/color.dart';
import 'package:myapp/app/data/widgets/receive_widget.dart';
import 'package:myapp/app/data/widgets/sent_widget.dart';
import 'package:myapp/app/data/widgets/text_widget.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        backgroundColor: cBlue,
        title: const TextWidget(
          title: "Elisabeth Center",
          size: 16,
          weight: FontWeight.w700,
          color: cWhite,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: cWhite,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: ListView(
                children: const [
                  ReceiveWidget(title: "Salam sehat! selamat datang di layanan elisabeth center, kami akan segera membalas pesan secepat mungkin pada saat jam pelayanan rumah sakit. Untuk menjaga kondisi server kami, maka pesan yang telah lebih dari 7 hari akan otomatis terhapus"),
                  SentWidget(title: "Hello"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: cWhite, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 8,
                    blurRadius: 10,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
