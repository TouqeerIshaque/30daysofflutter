// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeBtn = false;
  final _key = GlobalKey<FormState>();
  moveTonext(BuildContext context) async {
    setState(() {
      changeBtn = true;
    });

    await Future.delayed(Duration(seconds: 3));

    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeBtn = false;
    });
  }

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
          "Welcome  $name",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Enter username "),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Enter password "),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () => moveTonext(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(changeBtn ? 50 : 8),
                    color: Colors.deepPurple,
                  ),
                  width: changeBtn ? 50 : 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeBtn
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
