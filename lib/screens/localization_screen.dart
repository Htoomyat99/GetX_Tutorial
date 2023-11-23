import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_test/controller/local_text_controller.dart';
import 'package:splash_screen_test/widgets/ButtonInput.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({super.key});

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  final controller = Get.put(LocalTextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'GetX Localization',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'greeting'.tr,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('welcome_text'.trParams({'name': 'Mg Mg'})),
            const SizedBox(
              height: 30,
            ),
            ButtonInput(
                onPressed: () {
                  controller.changeLanguage('en', 'En');
                },
                btnText: 'English'),
            ButtonInput(
                onPressed: () {
                  controller.changeLanguage('mm', 'MM');
                },
                btnText: 'Myanmar')
          ],
        ),
      ),
    );
  }
}
