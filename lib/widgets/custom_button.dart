import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';

class CustomButton extends StatelessWidget {
  double? height, width;
  double padding, borderRadius, fontSize;
  bool? shadow;
  Color buttonColor, textColor;
  String text;
  VoidCallback? onTap;
  Widget? widget;

  CustomButton({
    Key? key,
    this.height,
    this.onTap,
    this.width,
    this.widget,
    this.fontSize = 16.0,
    this.borderRadius = 12.0,
    this.padding = 15.0,
    required this.textColor,
    required this.buttonColor,
    this.text = "",
    this.shadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height ?? 50,
          width: width ?? Get.width,
          margin: EdgeInsets.symmetric(horizontal: padding),
          decoration: BoxDecoration(
              boxShadow: [
                shadow == true
                    ? const BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.black54,
                        blurRadius: 5,
                      )
                    : const BoxShadow(),
              ],
              borderRadius: BorderRadius.circular(borderRadius),
              color: buttonColor),
          child: Center(
              child: text.isNotEmpty
                  ? Text(
                      text,
                      style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w700,
                          color: textColor),
                    )
                  : widget)),
    );
  }
}
