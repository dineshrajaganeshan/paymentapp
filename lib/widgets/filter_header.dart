import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:paymentapp/utils/custom_colors.dart';
import 'package:paymentapp/widgets/custom_button.dart';
import 'package:paymentapp/widgets/edittext.dart';

class FilterHeader extends StatelessWidget {
  FilterHeader({Key? key}) : super(key: key);

  var formatedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  RxString selectedDate = "".obs;

  @override
  Widget build(BuildContext context) {
    fromDateController.text = (formatedDate.toString());
    toDateController.text = (formatedDate.toString());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("From",
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
                EditText(
                  contentPadding: const EdgeInsets.only(left: 12),
                  width: 120,
                  readOnly: true,
                  showCursor: false,
                  controller: fromDateController,
                  hintText: "",
                  onTab: () async {
                    var startDatePicked = (await showDatePicker(
                      initialDate: DateTime.now(),
                      lastDate: DateTime(2030),
                      firstDate: DateTime(2000),
                      context: Get.context!,
                    ));

                    if (startDatePicked != null) {
                      selectedDate(
                          DateFormat('dd/MM/yyyy').format(startDatePicked));
                      fromDateController.text = (selectedDate.obs.toString());
                    }
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("To",
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    )),
                EditText(
                  contentPadding: const EdgeInsets.only(left: 12),
                  width: 120,
                  readOnly: true,
                  showCursor: false,
                  controller: toDateController,
                  hintText: "",
                  onTab: () async {
                    var startDatePicked = (await showDatePicker(
                      initialDate: DateTime.now(),
                      lastDate: DateTime(2030),
                      firstDate: DateTime(2000),
                      context: Get.context!,
                    ));

                    if (startDatePicked != null) {
                      selectedDate(
                          DateFormat('dd/MM/yyyy').format(startDatePicked));
                      toDateController.text = (selectedDate.obs.toString());
                    }
                  },
                ),
              ],
            ),
            CustomButton(
                width: 100,
                height: 50,
                borderRadius: 8,
                padding: 0,
                textColor: textColor,
                buttonColor: primaryButtonColor,
                text: "Filter"),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        EditText(
          contentPadding: const EdgeInsets.only(left: 14),
          controller: searchController,
          hintText: "Search",
          maxLines: 1,
          suffixIcon:
              const Icon(Icons.search, size: 28, color: secondaryButtonColor),
        )
      ],
    );
  }
}
