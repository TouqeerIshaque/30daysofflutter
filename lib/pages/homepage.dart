import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = "30 ";
    return Scaffold(
      appBar: AppBar(
     
   
        title: Center(child: Text("Catalog App" , 
        )
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to  $days days of flutter " ,  ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
