import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Some Text",
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Inter",
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    ),
  );
}
