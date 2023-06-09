// ignore_for_file: unused_field, unused_element, avoid_print, prefer_const_constructors

import 'package:applogin/login.dart';
import 'package:applogin/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthControl extends GetxController{
      static AuthControl instance = Get.find();
      late Rx<User?> _user;
      FirebaseAuth auth=FirebaseAuth.instance;

      @override
      void onReady(){
        super.onReady();
        _user = Rx<User?>(auth.currentUser);
        _user.bindStream(auth.userChanges());
        ever(_user,_initialScreen);
      }

      _initialScreen(User? user){
        if(user==null){
          print("login page");
          Get.offAll(()=>Login());
        }else{
          Get.offAll(()=>Welcome());
        }

      }

      void register(String email,password)async{
       try{
       await auth.createUserWithEmailAndPassword(email: email, password: password);
       }
       catch(e){
         Get.snackbar("About User", "User message",
         backgroundColor: Colors.red,
         snackPosition:SnackPosition.BOTTOM,
         titleText: Text(
          "Account creation Failed.."
         ),
         messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
         )
         );
        }
      }

}