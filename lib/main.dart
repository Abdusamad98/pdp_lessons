import 'package:flutter/material.dart';
import 'package:pdp_lessons/helper_widgets/horizontal_buttons.dart';
import 'package:pdp_lessons/helper_widgets/my_logout_button.dart';
import 'package:pdp_lessons/profile_screen.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen()
    ),
  );
}
