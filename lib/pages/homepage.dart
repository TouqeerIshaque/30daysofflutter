import 'package:flutter/material.dart';

class  HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    var  days = "30sd022";
    return Scaffold(
      appBar: AppBar(),
        body : Center(
          child: Container(
            child: Text("Welcome to  $days days of flutter "),
          ),
        ),
        drawer: Drawer(),
      );
  }
}