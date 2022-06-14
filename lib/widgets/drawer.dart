// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      children: [
        DrawerHeader(
          child :
           UserAccountsDrawerHeader (
            accountName: Text("muhammd touqeer"),
            accountEmail: Text("touqeerishque@outlook.com"),
            ) 
            )
      ],
      ),
      
    );
  }
}