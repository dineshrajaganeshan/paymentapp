import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/custom_button.dart';

import 'transaction_detail_controller.dart';

class TransactionDetailScreen extends GetView<TransactionDetailController> {
  @override
  final controller = Get.put(TransactionDetailController());
  TransactionDetailScreen({Key? key}) : super(key: key);

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
                    children: const [
                      Icon(Icons.arrow_back_sharp, size: 30, color: textColor),
                      Icon(Icons.share, size: 30, color: textColor),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("MONEY PAID",
                              style: TextStyle(
                                fontSize: 26,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("₹ 1,000.00",
                              style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Image.asset(
                        "assets/flag.png",
                        height: 42,
                        width: 42,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(DateTime.now().toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: textColor,
                          )),
                      CustomButton(
                        width: 100,
                        height: 30,
                        borderRadius: 8,
                        padding: 0,
                        textColor: textColor,
                        buttonColor: Colors.white60,
                        text: "Successfully",
                        fontSize: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("SENDER",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: textLightColor,
                                  fontWeight: FontWeight.bold)),
                          Text("Dinesh Raja",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      CustomButton(
                        width: 40,
                        height: 40,
                        borderRadius: 8,
                        padding: 0,
                        textColor: textColor,
                        shadow: true,
                        buttonColor: Colors.grey.shade200,
                        widget: Icon(
                          Icons.add_box,
                          size: 28,
                          color: secondaryButtonColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("To",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: textLightColor,
                                  fontWeight: FontWeight.bold)),
                          Text("Surya",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      CustomButton(
                        width: 40,
                        height: 40,
                        borderRadius: 8,
                        padding: 0,
                        textColor: textColor,
                        shadow: true,
                        buttonColor: Colors.grey.shade200,
                        widget: Icon(
                          Icons.wallet,
                          size: 28,
                          color: secondaryButtonColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                      thickness: 2, endIndent: 250, color: Colors.grey),
                  Text("Wallet Transaction id: 789456321",
                      style: const TextStyle(
                        fontSize: 14,
                        color: textLightColor,
                      )),
                  Text("order id: dfgg4521245",
                      style: const TextStyle(
                        fontSize: 14,
                        color: textLightColor,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            const Divider(thickness: 10, color: Colors.black12),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                size: 20,
                color: secondaryButtonColor,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: textLightColor,
              ),
              title: Text("Need help?",
                  style: const TextStyle(
                    fontSize: 14,
                    color: textLightColor,
                  )),
              dense: true,
            ),
            ListTile(
              leading: Icon(
                Icons.download_rounded,
                size: 20,
                color: secondaryButtonColor,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: textLightColor,
              ),
              title: Text("Need help?",
                  style: const TextStyle(
                    fontSize: 14,
                    color: textLightColor,
                  )),
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
