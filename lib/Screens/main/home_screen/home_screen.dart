import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/bottom_navigation_bar.dart';
import 'package:paymentapp/widgets/custom_button.dart';
import 'package:paymentapp/widgets/custom_menu.dart';
import 'package:paymentapp/widgets/filter_header.dart';
import 'package:paymentapp/widgets/profile_completion.dart';

import 'home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  final controller = Get.put(HomeScreenController());
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: Get.height / 3.2,
              color: bgColor,
              padding: const EdgeInsets.only(left: 16, right: 12, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.view_headline,
                          size: 30, color: textColor),
                      Image.asset(
                        "assets/flag.png",
                        fit: BoxFit.fill,
                        height: 40,
                        width: 40,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Active Total balance",
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("₹ 1,000.00",
                          style: TextStyle(
                            fontSize: 28,
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          )),
                      CustomButton(
                          width: 100,
                          height: 30,
                          borderRadius: 8,
                          padding: 0,
                          textColor: textColor,
                          buttonColor: Colors.white60,
                          text: "ADD +"),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CustomButton(
                        width: 30,
                        height: 30,
                        padding: 0,
                        borderRadius: 8,
                        textColor: textColor,
                        buttonColor: Colors.white60,
                        widget: const Icon(
                          Icons.arrow_upward_sharp,
                          size: 20,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("Up by 4% from last month",
                          style: TextStyle(
                            fontSize: 14,
                            color: textColor,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Operation",
                      style: TextStyle(
                        fontSize: 18,
                        color: primaryTextColor,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomMenu(),
                  const SizedBox(
                    height: 30,
                  ),
                  const ProfileCompletion(),
                  const SizedBox(
                    height: 30,
                  ),
                  FilterHeader(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(0.obs),
    );
  }
}
