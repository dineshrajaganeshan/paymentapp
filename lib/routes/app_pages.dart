import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:paymentapp/Screens/main/home_screen/home_screen.dart';
import 'package:paymentapp/Screens/main/record_screen/record_screen.dart';
import 'package:paymentapp/Screens/main/transaction_detail_screen/transaction_detail_screen.dart';
import 'package:paymentapp/Screens/main/wallet_topup_screen/wallet_topup_screen.dart';
import 'package:paymentapp/Screens/mpin_screen/mpin_screen.dart';
import '../Screens/log_in_screen/log_in_screen.dart';
import '../Screens/main/payment_status_screen/payment_status_screen.dart';
import '../Screens/main/payment_status_screen/payment_status_screen_controller.dart';
import '../Screens/otp_screen/otp_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.LOGINSCREEN, page: () => LogInScreen()),
    GetPage(name: AppRoutes.HOMESCREEN, page: () => HomeScreen()),
    GetPage(name: AppRoutes.MPINSCREEN, page: () => MpinScreen()),
    GetPage(name: AppRoutes.OTPSCREEN, page: () => OtpScreen()),
    GetPage(name: AppRoutes.WALLETTOPUPSCREEN, page: () => WalletTopupScreen()),
    GetPage(name: AppRoutes.RECORDSCREEN, page: () => RecordScreen()),
    GetPage(
        name: AppRoutes.TRANSACTIONDETAILSCREEN,
        page: () => TransactionDetailScreen()),
    GetPage(
        name: AppRoutes.PAYMENTSTATUSSCREEN,
        page: () => PaymentStatusScreen(
              details: PaymentDetails(PaymentStatus.success, "Payment Success",
                  "+91 1234567890", "1000", DateTime.now()),
            )),
  ];
}
