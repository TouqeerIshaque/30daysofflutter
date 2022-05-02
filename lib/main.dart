import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
 void main() {
runApp(myApp());  
}

class myApp extends StatelessWidget {
  int days =302;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:HomePage() ,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      
      routes: {
      "/"  : (context) => Loginpage(),
      "/loginpage" : (context) => Loginpage()
      }
    );
  }
}