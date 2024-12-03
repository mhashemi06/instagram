import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';
import 'package:instagram_app/screens/login_screen.dart';
import 'package:instagram_app/screens/main_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'package:instagram_app/screens/splash_screen.dart';
import 'package:instagram_app/screens/switch_account_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatefulWidget {
  const InstagramApp({super.key});

  @override
  State<InstagramApp> createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  @override
  Widget build(BuildContext context) {
    return getMaterial();
  }
}

Widget getMaterial() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: Colors.white,
          fontFamily: 'GB',
          fontSize: 16,
        ),
        bodySmall: TextStyle(
          color: Colors.white,
          fontFamily: 'SM',
          fontSize: 12,
        ),
        displayMedium: TextStyle(
        color: greyColor,
        fontFamily: 'SM',
        fontSize: 12,
      ),
        displaySmall: TextStyle(
          color: Colors.white,
          fontFamily: 'GM',
          fontSize: 14,
        ),
        displayLarge: TextStyle(
          color: Colors.white,
          fontFamily: 'GR',
          fontSize: 14,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: pinkColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            textStyle:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 16)),
      ),
    ),
    home: MainScreen(),
  );
}
