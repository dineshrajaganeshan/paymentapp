import 'package:flutter/material.dart';

class CustomKeyboard extends StatelessWidget {
  CustomKeyboard(
      {Key? key, this.isSecure = false, required this.onDone, this.onChange})
      : super(key: key);

  bool isSecure;
  Function(String) onDone;
  Function(String)? onChange;

  List<int> keys = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  String value = '';

  @override
  Widget build(BuildContext context) {
    if (isSecure) keys.shuffle();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              keys[0],
            ),
            _buildButton(
              keys[1],
            ),
            _buildButton(
              keys[2],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              keys[3],
            ),
            _buildButton(
              keys[4],
            ),
            _buildButton(
              keys[5],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              keys[6],
            ),
            _buildButton(
              keys[7],
            ),
            _buildButton(
              keys[8],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              'clear',
            ),
            _buildButton(
              keys[9],
            ),
            _buildButton(
              'done',
            ),
          ],
        )
      ],
    );
  }

  _buildButton(
    var name,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (name is int) {
            if (value.length < 4) {
              value += '$name';
              onChange!(value);
            }
          } else if (name == 'clear') {
            if (value.isNotEmpty) {
              value = value.substring(0, value.length - 1);
              onChange!(value);
            }
          } else {
            // all done need check
            if (value.length == 4) {
              onDone(value);
            } else {
              //show toast
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: name is int
              ? Text(
                  '$name',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                )
              : name == 'clear'
                  ? const Icon(Icons.clear)
                  : const Icon(Icons.done),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';

import '../utils/custom_colors.dart';

class CustomKeyboard extends StatelessWidget {
  CustomKeyboard(
      {Key? key,
      this.isSecure = false,
      this.isMpin = false,
      required this.onDone,
      this.onChange})
      : super(key: key);

  bool isSecure, isMpin;
  Function(String) onDone;
  Function(String)? onChange;

  List<int> keys = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  RxString keyValue = ''.obs;

  @override
  Widget build(BuildContext context) {
    if (isSecure) keys.shuffle();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isMpin
            ? Column(
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
                    height: 20,
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
                ],
              )
            : SizedBox.shrink(),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              keys[0],
            ),
            _buildButton(
              keys[1],
            ),
            _buildButton(
              keys[2],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              keys[3],
            ),
            _buildButton(
              keys[4],
            ),
            _buildButton(
              keys[5],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              keys[6],
            ),
            _buildButton(
              keys[7],
            ),
            _buildButton(
              keys[8],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
              'clear',
            ),
            _buildButton(
              keys[9],
            ),
            _buildButton(
              'done',
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        isMpin
            ? Expanded(
                child: const Text("Forget MPIN? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  _buildButton(
    var name,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (name is int) {
            if (keyValue.value.length < 4) {
              keyValue.value += '$name';
              onChange!(keyValue.value);
            }
          } else if (name == 'clear') {
            if (keyValue.value.isNotEmpty) {
              keyValue.value =
                  keyValue.value.substring(0, keyValue.value.length - 1);
              onChange!(keyValue.value);
            }
          } else {
            // all done need check
            if (keyValue.value.length == 4) {
              onDone(keyValue.value);
            } else {
              //show toast
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: name is int
              ? Text(
                  '$name',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                )
              : name == 'clear'
                  ? const Icon(Icons.clear)
                  : const Icon(Icons.done),
        ),
      ),
    );
  }
}
*/
