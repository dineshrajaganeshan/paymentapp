import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/custom_button.dart';
import 'package:paymentapp/widgets/custom_keyboard.dart';

Future showMpinBottomSheet() async {
  RxString keyValue = ''.obs;
  return await Get.bottomSheet(
      backgroundColor: textColor,
      enableDrag: false,
      isDismissible: true,
      isScrollControlled: true,
      Container(
          height: Get.height / 1.8,
          padding: const EdgeInsets.only(top: 12, right: 12, bottom: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Text("Cancel",
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryTextColor,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Enter Your MPIN",
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 25,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      4,
                      (index) => Container(
                            margin: const EdgeInsets.all(12),
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                                color: keyValue.value.length > index
                                    ? secondaryButtonColor
                                    : Colors.grey,
                                shape: BoxShape.circle),
                          )),
                ),
              ),
              const Spacer(),
              CustomKeyboard(onChange: (String text) {
                keyValue(text); //pass the changing value to RxString
              }, onDone: (String text) {
                //when mpin is done check
              }),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Text("Forget MPIN? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          )));
}

Future showCustomAlertDialog(
  String title, //required title
  String content, //required content
  {
  String? cancel,
  String? confirm,
  VoidCallback? onTabCancel,
  VoidCallback? onTabConfirm,
}) async {
  return await Get.defaultDialog(
    radius: 14,
    actions: [
      const SizedBox(
        height: 50,
      )
    ],
    confirm: confirm == null
        ? null
        : Padding(
            padding: const EdgeInsets.only(left: 30),
            child: CustomButton(
              width: Get.width / 5,
              height: 30,
              shadow: true,
              padding: 0,
              textColor: textColor,
              buttonColor: primaryButtonColor,
              text: confirm,
              onTap: onTabConfirm,
            ),
          ),
    cancel: cancel == null
        ? null
        : CustomButton(
            width: Get.width / 5,
            height: 30,
            shadow: true,
            padding: 0,
            textColor: textColor,
            buttonColor: secondaryButtonColor,
            text: cancel,
            onTap: onTabCancel,
          ),
    buttonColor: primaryButtonColor,
    title: title,
    content: Text(
      content,
      style: const TextStyle(
        fontSize: 16,
        color: primaryTextColor,
      ),
    ),
    backgroundColor: textColor,
    titleStyle: const TextStyle(
      fontSize: 22,
      color: primaryTextColor,
      fontWeight: FontWeight.bold,
    ),
  );
}
