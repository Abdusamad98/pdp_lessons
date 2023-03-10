import 'package:flutter/material.dart';



class MyLogOutButton extends StatelessWidget {
  const MyLogOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 4,
            color: Colors.grey.shade300,
            offset: Offset(3, 4),
          )
        ],
      ),
      child: Center(
        child: Text(
          "Log Out",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
