// ignore_for_file: prefer_const_constructors, unused_import, unused_local_variable

import 'package:applogin/auth_control.dart';
import 'package:applogin/login.dart';
import 'package:applogin/signup.dart';
import 'package:applogin/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().then((value) =>
//   Get.put(AuthControl()));
//   runApp(MyApp());
// } 


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home:Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 