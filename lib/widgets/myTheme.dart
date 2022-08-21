import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myTheme {

  static ThemeData lightTheme (BuildContext context) => 
  ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: Theme.of(context).textTheme.headline6
              ),
        );

 static ThemeData  darkTheme(BuildContext context) =>
 ThemeData(brightness: Brightness.dark);
 static Color creamColor = Color(0xfff5f5f5) ; 
 static Color darkBluishcolor = Color(0xff403b58) ; 
 static Color red = Color.fromARGB(255, 40, 11, 185) ; 


}


