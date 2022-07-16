// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nsdd/utils/constants.dart';

enum AppTheme { Dark, Light }

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.Dark: ThemeData.dark().copyWith(
    primaryColor: kDarkPrimaryColor,
    scaffoldBackgroundColor: kDarkBackgroundColor,
    backgroundColor: kDarkPlaceholderColor,
    errorColor: kDarkErrorColor,
    textTheme: GoogleFonts.redHatDisplayTextTheme(
      const TextTheme().copyWith(
        headline1: TextStyle(
          fontSize: 48.sp,
          color: kDarkTextColor,
        ),
        headline2: TextStyle(
          fontSize: 32.sp,
          color: kDarkTextColor,
        ),
        headline3: TextStyle(
          fontSize: 24.sp,
          color: kDarkTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 24.sp,
          color: kDarkTextColor,
        ),
        headline5: TextStyle(
          fontSize: 20.sp,
          color: kDarkTextColor,
        ),
        headline6: TextStyle(
          fontSize: 16.sp,
          color: kDarkTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 12.sp,
          color: kDarkTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 14.sp,
          color: kDarkTextColor,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: kOutlineInputBorderShape,
      enabledBorder: kOutlineInputBorderShape,
      focusedBorder: kOutlineInputBorderShape,
      filled: true,
      fillColor: kLightPlaceholderColor,
      contentPadding: kContentPadding,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kDarkBackgroundColor,
      selectedItemColor: kDarkPrimaryColor,
      selectedIconTheme: IconThemeData(
        color: kDarkPrimaryColor,
        size: 24.sp,
      ),
      unselectedItemColor: kDarkPlaceholderTextColor,
      unselectedIconTheme: IconThemeData(
        color: kDarkPlaceholderTextColor,
        size: 24.sp,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kDarkBackgroundColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(
        color: kDarkTextColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: kDarkTextColor,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      refreshBackgroundColor: kDarkPlaceholderColor,
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      background: kDarkPlaceholderColor,
      surface: kDarkPlaceholderTextColor,
      primary: kDarkPrimaryColor,
      secondary: kDarkAccentColor,
    ),
  ),
  AppTheme.Light: ThemeData.light().copyWith(
    primaryColor: kLightPrimaryColor,
    scaffoldBackgroundColor: kLightBackgroundColor,
    backgroundColor: kLightPlaceholderColor,
    errorColor: kLightErrorColor,
    textTheme: GoogleFonts.redHatDisplayTextTheme(
      const TextTheme().copyWith(
        headline1: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: kLightPrimaryColor,
        ),
        headline2: TextStyle(
          fontSize: 32.sp,
          color: kLightTextColor,
        ),
        headline3: TextStyle(
          fontSize: 24.sp,
          color: kLightTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 24.sp,
          color: kLightTextColor,
        ),
        headline5: TextStyle(
          fontSize: 20.sp,
          color: kLightTextColor,
        ),
        headline6: TextStyle(
          fontSize: 16.sp,
          color: kLightTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 12.sp,
          color: kLightTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 14.sp,
          color: kLightTextColor,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: kOutlineInputBorderShape,
      enabledBorder: kOutlineInputBorderShape,
      focusedBorder: kOutlineInputBorderShape,
      filled: true,
      fillColor: kLightPlaceholderColor,
      contentPadding: kContentPadding,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: kLightPrimaryColor,
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: kDarkTextColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kLightBackgroundColor,
      selectedItemColor: kLightPrimaryColor,
      selectedIconTheme: IconThemeData(
        color: kLightPrimaryColor,
        size: 24.sp,
      ),
      unselectedItemColor: kLightPlaceholderTextColor,
      unselectedIconTheme: IconThemeData(
        color: kLightPlaceholderTextColor,
        size: 24.sp,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      refreshBackgroundColor: kLightPlaceholderColor,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      background: kLightPlaceholderColor,
      surface: kLightPlaceholderTextColor,
      primary: kLightPrimaryColor,
      secondary: kLightAccentColor,
    ),
  )
};
