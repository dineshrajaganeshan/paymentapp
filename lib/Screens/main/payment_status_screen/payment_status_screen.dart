import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'payment_status_screen_controller.dart';

class PaymentStatusScreen extends GetView<PaymentStatusScreenController> {
  @override
  final controller = Get.put(PaymentStatusScreenController());

  PaymentStatusScreen({Key? key, required this.details}) : super(key: key);

  var successColors = [Color(0xff76c479), Color(0xff5bb85f), Color(0xff3b893f)];
  var failedColors = [Color(0xfff7746a), Color(0xffdf1b0c), Color(0xffdf1b0c)];
  var pendingColors = [Color(0xff76c479), Color(0xff5bb85f), Color(0xff3b893f)];

  PaymentDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: details.status == PaymentStatus.success
              ? successColors
              : details.status == PaymentStatus.failed
                  ? failedColors
                  : pendingColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 14,
            left: 14,
            top: 100,
          ),
          child: Column(
            children: [
              Image.asset(width: 130, height: 130, "assets/flag.png"),
              const SizedBox(
                height: 50,
              ),
              Text(details.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              const SizedBox(
                height: 10,
              ),
              Text("We have just sent your money to",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              const SizedBox(
                height: 10,
              ),
              Text(details.senderNo,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                endIndent: 40,
                indent: 40,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Transfer Amount",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Text(details.amount,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Text(details.dateTime.toString(),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Show Transaction details",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_right_alt,
                      size: 30,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
