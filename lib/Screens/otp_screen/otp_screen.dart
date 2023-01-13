import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/Screens/otp_screen/otp_screen_controller.dart';
import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/custom_button.dart';
import 'package:paymentapp/widgets/edittext.dart';

class OtpScreen extends GetView<OtpScreenController> {
  @override
  final controller = Get.put(OtpScreenController());
  OtpScreen({Key? key}) : super(key: key);

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
                const Text("OTP\nVerify!",
                    style: TextStyle(
                      fontSize: 26,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text("Enter 4-digit code we have sent to at",
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryTextColor,
                      letterSpacing: 0,
                    )),
                const Text("+91 1234567890",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: secondaryTextColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EditText(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      controller: controller.fieldOne,
                      hintText: null,
                      height: 55,
                      width: 55,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      fontSize: 30,
                      textColor: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    EditText(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      controller: controller.fieldTwo,
                      hintText: null,
                      width: 55,
                      height: 55,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      fontSize: 30,
                      textColor: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    EditText(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      controller: controller.fieldThree,
                      hintText: null,
                      width: 55,
                      height: 55,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      fontSize: 30,
                      textColor: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    EditText(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      controller: controller.fieldFour,
                      hintText: null,
                      textAlign: TextAlign.center,
                      width: 55,
                      height: 55,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      fontSize: 30,
                      textColor: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text("This season will end in 60 seconds",
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Did not get code?   ",
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryTextColor,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: "Resend code",
                      style: TextStyle(
                        fontSize: 14,
                        color: secondaryTextColor,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                ])),
                const SizedBox(
                  height: 100,
                ),
                CustomButton(
                  textColor: textColor,
                  buttonColor: primaryButtonColor,
                  text: "Sign In",
                  shadow: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
