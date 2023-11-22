import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_test/widgets/ButtonInput.dart';

class RouteDetail extends StatefulWidget {
  const RouteDetail({super.key});

  @override
  State<RouteDetail> createState() => _RouteDetailState();
}

class _RouteDetailState extends State<RouteDetail> {
  void backAction() {
    Get.back(
        result: 'data from dashboardOne',
        closeOverlays:
            false // true when we have dialogs, snack bar, etc.. screens
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Dashboard Screen One',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dashboard Screen One'),
              Text('data from main >>> ${Get.arguments}'),
              ButtonInput(
                onPressed: backAction,
                btnText: 'Back',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
