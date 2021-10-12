import 'package:flutter/material.dart';
import 'package:forms/util/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themePrimaryy() => ThemeData(
  inputDecorationTheme: const InputDecorationTheme(border: OutlineInputBorder()),
  textTheme: TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.poppins(
        fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.poppins(
        fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.poppins(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  )
);


ThemeData themeSecondary() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
