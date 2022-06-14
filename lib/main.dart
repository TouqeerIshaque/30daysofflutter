import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

 void main() {
runApp(
  myApp());  
}
 
class myApp extends StatelessWidget {
  int days =302;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     themeMode: ThemeMode.light,
     theme:ThemeData(
      //  fontFamily: GoogleFonts.lato().fontFamily,
      //  primaryTextTheme: GoogleFonts.latoTextTheme(),
     )
      ,
      initialRoute: MyRoutes.homeRoute,
      routes: {
      "/"  : (context) =>Loginpage(),
      MyRoutes.loginRoute : (context) => Loginpage(),
      MyRoutes.homeRoute : ((context) => HomePage())
      }
    );
  }
}