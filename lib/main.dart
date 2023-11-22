import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_test/res/values.dart';
import 'package:splash_screen_test/screens/routeScreens/route_detail.dart';
import 'package:splash_screen_test/screens/routeScreens/route_screen.dart';
import 'package:splash_screen_test/screens/state_management_tutorial.dart';
import 'package:splash_screen_test/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Nav.home,
      getPages: [
        GetPage(
          name: Nav.home,
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: Nav.route,
          page: () => const RouteScreen(),
        ),
        GetPage(
          name: Nav.routeDetail,
          page: () => const RouteDetail(),
        ),
        GetPage(
          name: Nav.stateManagement,
          page: () => const StateManagementScreen(),
        )
      ],
    );
  }
}
