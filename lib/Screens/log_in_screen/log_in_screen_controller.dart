import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LogInScreenController extends GetxController {
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxInt selectedIndex = 0.obs;
  RxBool isVisible = false.obs;

  itemTapped(index) {
    selectedIndex(index);
  }
}
