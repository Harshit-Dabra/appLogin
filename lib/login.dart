// ignore_for_file: prefer_const_constructors, unused_import, implementation_imports, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:applogin/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
class Login extends StatefulWidget {
  const Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.white,
      body:
      SingleChildScrollView(
            child: Column(      
        children:[
          Container(
            width: w,
            height: h*0.4,
            decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/bg_2.jpg"
                ),
                fit: BoxFit.cover
                ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize:50,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Sign in to your Account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500]
                  ),
                ),
                SizedBox(height:30,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[ BoxShadow(
                      blurRadius: 10,
                      spreadRadius:7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2),

                    )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email,color: Colors.blueAccent,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )
                      ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:30,),
          Container(
             margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[ BoxShadow(
                      blurRadius: 10,
                      spreadRadius:7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2),

                    )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password,color: Colors.blueAccent,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )
                      ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                 Text(
                  "Forgot your password ?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500]
                  ),
                ),
                SizedBox(height:10,),
                Container(
                  child:Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: (){},
                        style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          fixedSize: Size(180,60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                        ),
                        child: Text('Login'),
                      )
                    ],
                  ),
                ),
                SizedBox(height:w*0.1,),
                RichText(text:TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),   
                  children: [
                    TextSpan(
                  text: "Create",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(
                    Signup(),
                  )
                    ),
                  ]              
                ),

            ),
         
         ],
      ),
    ),
    );
  }
}