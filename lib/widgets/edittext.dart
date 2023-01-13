import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';

// ignore: must_be_immutable
class EditText extends StatelessWidget {
  String? placeholder, hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  EdgeInsets? contentPadding;
  int? maxLines, maxLength, minLines;
  bool readOnly, obsecureText;
  TextEditingController? controller;
  Color? borderColor, textColor;
  Function? onChanged, onSubmitted;
  VoidCallback? onTab;
  TextInputAction? textInputAction;
  TextInputType? keyboardType;
  double? width, height, fontSize, cursorHeight, cursorWidth;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  bool isMaxNull, showCursor, showBorder;

  EditText({
    Key? key,
    this.placeholder,
    this.showBorder = false,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.fontSize,
    this.readOnly = false,
    this.obsecureText = false,
    this.borderColor,
    this.textColor,
    this.onChanged,
    this.onSubmitted,
    this.onTab,
    this.textInputAction,
    this.keyboardType,
    this.textAlign,
    this.width,
    this.height,
    this.cursorHeight,
    this.fontWeight,
    this.cursorWidth,
    this.isMaxNull = false,
    this.showCursor = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? Get.width,
      padding: showBorder ? null : contentPadding,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onTap: onTab,
        maxLength: maxLength,
        readOnly: readOnly,
        controller: controller,
        textAlign: textAlign ?? TextAlign.start,
        cursorHeight: cursorHeight,
        cursorWidth: cursorWidth ?? 2,
        showCursor: showCursor,
        cursorColor: Colors.black26,
        maxLines: maxLines ?? 1,
        minLines: minLines,
        obscureText: obsecureText,
        style: TextStyle(
            fontSize: fontSize, color: textColor, fontWeight: fontWeight),
        keyboardType: onTab != null ? TextInputType.none : keyboardType,
        decoration: InputDecoration(
          counter: null,
          labelText: placeholder,
          counterText: '',

          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: Colors.grey,
          focusedBorder: showBorder
              ? OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: secondaryButtonColor, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          //border: InputBorder.none,
          border: showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              : InputBorder.none,

          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
