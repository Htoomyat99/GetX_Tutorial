import 'package:get/get.dart';

class StageManagementController extends GetxController {
  RxInt count = 0.obs;

  void increasemnetAction() {
    count++;
  }

  void decreasementAction() {
    count--;
  }
}
