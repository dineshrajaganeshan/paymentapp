import 'package:get/get.dart';

enum PaymentStatus { success, failed, pending }

class PaymentStatusScreenController extends GetxController {}

class PaymentDetails {
  PaymentStatus status;
  String title;
  String senderNo;
  String amount;
  DateTime dateTime;

  PaymentDetails(
    this.status,
    this.title,
    this.senderNo,
    this.amount,
    this.dateTime,
  );
}
