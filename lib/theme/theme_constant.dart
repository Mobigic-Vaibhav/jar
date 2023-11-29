import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jar/common/jar_helper.dart';
import 'package:jar/theme/colors.dart';





///
ThemeData jarTheme = ThemeData(
  primarySwatch: JarHelper.createMaterialColor(
    Color(JarColors.primaryColor),
  ),
  scaffoldBackgroundColor: Color(JarColors.scaffoldBackgroundColor),
  primaryColor: Color(JarColors.primaryColor),
  //canvasColor:Colors.black,
  colorScheme: ColorScheme.dark(
      primary: Color(JarColors.primaryColor),
      primaryContainer: Color(JarColors.secondaryColor), 

      //List colors

      secondaryContainer: Color(JarColors.blueColor),
      secondary: Color(JarColors.accentColor)

      //scaffold bg varient
      ),
  fontFamily: "Montserrat Alternates",
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.normal,
    ),
    headline2: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    headline3: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.normal,
    ),
    headline4: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
    headline6: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.normal,
    ),
    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.normal,
    ),
    subtitle2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    button: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.normal,
    ),
    caption: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
    overline: TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.normal,
    ),
  ),
);
