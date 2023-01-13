import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/constant_widgets.dart';
import 'package:paymentapp/widgets/custom_button.dart';
import 'package:paymentapp/widgets/custom_dialog.dart';
import 'package:paymentapp/widgets/custom_keyboard.dart';
import 'package:paymentapp/widgets/edittext.dart';

import 'wallet_topup_controller.dart';

class WalletTopupScreen extends GetView<WalletTopupController> {
  @override
  final controller = Get.put(WalletTopupController());
  WalletTopupScreen({Key? key}) : super(key: key);

  TextEditingController bankController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController remarkController = TextEditingController();

  var bankList = [
    "Indian Bank",
    "Kvb bank",
    "Sbi bank",
    "Punjab bank",
    "Pandiyan bank",
    "National bank",
    "yes bank"
  ];

  RxBool isAttached = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 5,
        centerTitle: true,
        title: const Text("Top up",
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditText(
                    width: Get.width,
                    contentPadding: const EdgeInsets.only(left: 12),
                    readOnly: true,
                    showCursor: false,
                    controller: bankController,
                    hintText: "Select Bank",
                    suffixIcon: const Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                      color: secondaryButtonColor,
                    ),
                    onTab: () async {
                      _showBankList();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  EditText(
                    width: Get.width,
                    contentPadding: const EdgeInsets.only(left: 12),
                    controller: amountController,
                    hintText: "Amount",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      EditText(
                        height: 100,
                        contentPadding: const EdgeInsets.only(left: 12),
                        width: Get.width / 1.6,
                        maxLines: 5,
                        controller: remarkController,
                        hintText: "Remarks",
                      ),
                      Obx(
                        () => CustomButton(
                          width: Get.width / 4.2,
                          height: 90,
                          borderRadius: 8,
                          padding: 0,
                          onTap: () {
                            isAttached(true);
                          },
                          textColor: textColor,
                          shadow: true,
                          buttonColor: Colors.grey.shade200,
                          widget: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.attach_file,
                                size: 30,
                                color: isAttached.value
                                    ? primaryButtonColor
                                    : Colors.grey,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(isAttached.value ? "Attached" : "Attach",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                          width: Get.width / 2.5,
                          textColor: textColor,
                          buttonColor: secondaryButtonColor,
                          text: "cancel",
                          padding: 0,
                          onTap: () {
                            showMpinBottomSheet();
                          }),
                      CustomButton(
                        width: Get.width / 2.5,
                        textColor: textColor,
                        buttonColor: primaryButtonColor,
                        text: "save",
                        padding: 0,
                        onTap: () {
                          showCustomAlertDialog(
                              "Alert", "This content is example Purpose",
                              cancel: "cancel",
                              confirm: "submit", onTabCancel: () {
                            print("cancel");
                            Get.back();
                          }, onTabConfirm: () {
                            print("confirm");
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _showBankList() {
    return Get.bottomSheet(
      backgroundColor: textColor,
      enableDrag: false,
      isDismissible: true,
      isScrollControlled: true,
      Container(
        height: Get.height / 2,
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Bank names",
                style: TextStyle(
                  fontSize: 16,
                  color: secondaryTextColor,
                  fontWeight: FontWeight.bold,
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: bankList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (__, index) {
                    return ListTile(
                      dense: true,
                      isThreeLine: false,
                      leading: const Icon(
                        Icons.account_balance_outlined,
                        size: 20,
                        color: secondaryButtonColor,
                      ),
                      onTap: () {
                        bankController.text = bankList[index];
                        print(bankList[index]);
                        Get.back();
                      },
                      title: Text(bankList[index].toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: primaryTextColor,
                            fontWeight: FontWeight.bold,
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
