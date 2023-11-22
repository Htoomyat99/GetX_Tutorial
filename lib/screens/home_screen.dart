import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_test/screens/routeScreens/route_screen.dart';
import 'package:splash_screen_test/widgets/ButtonInput.dart';

import 'state_management_tutorial.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void routeAction() {
    Get.to(
      () => RouteScreen(),
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 500),
    );
  }

  void stateMangementAction() {
    Get.to(
      () => StateManagementScreen(),
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonInput(
                onPressed: routeAction,
                btnText: 'getX route',
              ),
              ButtonInput(
                onPressed: stateMangementAction,
                btnText: 'getX statemanagement',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
