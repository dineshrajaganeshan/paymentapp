import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/Screens/log_in_screen/log_in_screen_controller.dart';
import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/bottom_navigation_bar.dart';
import 'package:paymentapp/widgets/custom_button.dart';
import 'package:paymentapp/widgets/edittext.dart';
import 'package:paymentapp/widgets/menu_card.dart';

class LogInScreen extends GetView<LogInScreenController> {
  @override
  final controller = Get.put(LogInScreenController());

  LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 8.0,
              right: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Text("Sign In \nto Account",
                    style: TextStyle(
                      fontSize: 26,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "Sign In with User name or email and \npassword to use your Account",
                    style: TextStyle(
                      fontSize: 14,
                      color: secondaryTextColor,
                      letterSpacing: 0,
                    )),
                const SizedBox(
                  height: 20,
                ),
                EditText(
                    contentPadding: const EdgeInsets.only(left: 14),
                    controller: controller.mobileNoController,
                    hintText: "phone or email"),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => EditText(
                      controller: controller.passwordController,
                      contentPadding: const EdgeInsets.only(left: 14),
                      hintText: "password",
                      obsecureText: controller.isVisible.value,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.isVisible(!controller.isVisible.value);
                        },
                        child: Icon(
                          controller.isVisible.value
                              ? Icons.remove_red_eye_rounded
                              : Icons.remove_red_eye_outlined,
                          size: 20,
                          color: Colors.black26,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  textColor: textColor,
                  buttonColor: primaryButtonColor,
                  text: "Sign In",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  textColor: textColor,
                  buttonColor: secondaryButtonColor,
                  text: "Use phone number",
                  shadow: true,
                ),
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Forgot password | ",
                        style: TextStyle(
                          fontSize: 14,
                          color: primaryTextColor,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: "Create Account",
                        style: TextStyle(
                          fontSize: 14,
                          color: secondaryTextColor,
                          fontWeight: FontWeight.bold,
                        )),
                  ])),
                ),

                /*Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 5),
                            color: Colors.black54,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: secondaryButtonColor),
                    child: const Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: textColor),
                    ))),*/
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
