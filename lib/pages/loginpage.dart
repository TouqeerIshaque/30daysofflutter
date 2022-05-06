import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "assets/images/loginimg.png",
          // height: 500,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        ),
        Padding(
      padding: const EdgeInsets.symmetric(vertical :16.0 , horizontal :32.0 ),
      child: Column(children: [
            TextFormField(
            decoration: InputDecoration(hintText: "Enter username "),
          ),
             TextFormField(
               obscureText: true,
            decoration: InputDecoration(hintText: "Enter password "),
          ),
          SizedBox(
            height: 20.0,
          ),
          
          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(minimumSize: Size(140, 40)),
            onPressed: (){
             Navigator.pushNamed(context, MyRoutes.homeRoute);
      
            },
          )
      ],),
        )
      ]),
    );
  }
}
