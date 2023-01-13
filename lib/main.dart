import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/routes/app_pages.dart';
import 'package:paymentapp/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      initialRoute: AppRoutes.WALLETTOPUPSCREEN,
      getPages: AppPages.routes,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        fontFamily: 'CeraPro',
        useMaterial3: true,
      ),
    );
  }
}
