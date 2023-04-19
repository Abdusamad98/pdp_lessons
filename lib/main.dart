import 'package:flutter/material.dart';
import 'package:pdp_lessons/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;

main() async {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()),
  );

  prefs = await SharedPreferences.getInstance();
}
