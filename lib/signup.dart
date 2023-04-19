// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_import, implementation_imports, unused_import

import 'package:applogin/auth_control.dart';
import 'package:applogin/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
     double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    var email=TextEditingController();
    var password=TextEditingController();
    return Scaffold(
       body:
      SingleChildScrollView(
            child: Column(      
        children:[
          Container(
            width: w,
            height: h*0.3,
            decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/bg_0.jpg"
                ),
                fit: BoxFit.cover
                ),
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.19,    
                ),

                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage(
                    "img/bg_3.jpg"
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Welcome",
                //   style: TextStyle(
                //     fontSize:50,
                //     fontWeight: FontWeight.bold
                //   ),
                // ),
                // Text(
                //   "Sign in to your Account",
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.grey[500]
                //   ),
                // ),
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
                    controller: email,
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
                    controller: password,
                    obscureText: true,
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
      //            Text(
      //             "Forgot your password ?",
      //             style: TextStyle(
      //               fontSize: 20,
      //               color: Colors.grey[500]
      //             ),
      //           ),
                SizedBox(height:10,),
                GestureDetector(
                  onTap:(){
                    //facing a problem here in email input 
                    AuthControl.instance.register(email.text, password);
                  },
                child: Container(
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
                        child: Text('Sign up'),
                      )
                    ],
                  ),
                )
                ),
                SizedBox(height:w*0.1,),
                RichText(text:TextSpan(
                  text: "Have an account? ",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ), 
                  
                    
                  children: [
                    TextSpan(
                  text: "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer:TapGestureRecognizer()..onTap=()=>Get.to(
                  Login(),
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