import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_test/res/values.dart';
import 'package:splash_screen_test/screens/routeScreens/route_detail.dart';
import 'package:splash_screen_test/widgets/ButtonInput.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  void getToFucntion() async {
    var data = await Get.to(
      () => const RouteDetail(),
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease,
      arguments: 'to Argument from home',
    );

    debugPrint('$data');
  }

  void getOffFucntion() {
    Get.off(
      () => const RouteDetail(),
      transition: Transition.fadeIn,
      arguments: 'off Argument from home',
    );
  }

  void getToNameFucntion() {
    Get.toNamed(Nav.routeDetail, arguments: 'toName Argument form home');
  }

  void getOffNameFucntion() {
    Get.offNamed(Nav.routeDetail, arguments: 'offName Argument form home');
  }

  void getOffAllFinction() {
    Get.offAll(
      () => const RouteDetail(),
      arguments: 'AllOff Argument form home',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'GetX Route',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonInput(
                onPressed: getToFucntion,
                btnText: 'Get.to(NextScreen)',
              ),
              ButtonInput(
                onPressed: getOffFucntion,
                btnText: 'Get.off(NextScreen)',
              ),
              ButtonInput(
                onPressed: getToNameFucntion,
                btnText: 'Get.toNamed(NextScreen)',
              ),
              ButtonInput(
                onPressed: getOffNameFucntion,
                btnText: 'Get.offName(NextScreen)',
              ),
              ButtonInput(
                  onPressed: getOffAllFinction, btnText: 'getOffAllFunction')
            ],
          ),
        ),
      ),
    );
  }
}
