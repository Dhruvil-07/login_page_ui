import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

ThemeData login1_light_theme(BuildContext context)
{
   return ThemeData().copyWith(
     brightness: Brightness.light,

     //text button theme data
     textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
     ),

     //elevated button theme
     elevatedButtonTheme: ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
         shadowColor: Colors.black,
         elevation: 10.0,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.circular(30.0)),
         ),
       ),
     ),

   );
}