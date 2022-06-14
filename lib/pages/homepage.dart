import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class  HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    var  days = "30 ";
    return Scaffold(
      appBar: AppBar(),
        body : Center(
          child: Container(
            child: Text("Welcome to  $days days of flutter "),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}