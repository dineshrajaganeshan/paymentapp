import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/Screens/mpin_screen/mpin_screen_controller.dart';

class MpinScreen extends GetView<MpinController> {
  @override
  final controller = Get.put(MpinController());
  MpinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
