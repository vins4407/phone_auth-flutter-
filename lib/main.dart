import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flyin/screens/home.dart';
import 'package:flyin/screens/login.dart';

import 'package:get/get.dart';

import 'controllers/authcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final phoneAuthController = Get.put(PhoneAuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (BuildContext context) {
        return const homeScreen();
      }),
      //initialRoute: login.id,
    );
  }
}
