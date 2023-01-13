import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/filter_header.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 5,
        centerTitle: true,
        title: const Text("Records",
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: Column(
          children: [
            FilterHeader(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                height: Get.height,
                child: const Center(
                  child: Text("No Records found",
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryTextColor,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
