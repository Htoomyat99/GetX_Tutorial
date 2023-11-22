import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_test/widgets/ButtonInput.dart';
import 'package:splash_screen_test/controller/stage_controller.dart';

class StateManagementScreen extends StatefulWidget {
  const StateManagementScreen({super.key});

  @override
  State<StateManagementScreen> createState() => _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StageManagementController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'GetX Statemanagement',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonInput(
                    onPressed: controller.decreasementAction, btnText: '-'),
                SizedBox(
                  width: 30,
                ),
                Obx(
                  () => Text(
                    controller.count.value.toString(),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ButtonInput(
                    onPressed: controller.increasemnetAction, btnText: '+'),
              ],
            )
          ],
        )),
      ),
    );
  }
}
