import 'package:flutter/material.dart';
import 'package:pdp_lessons/helper_widgets/global_button.dart';
import 'package:pdp_lessons/login_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F5460),
      appBar: AppBar(
        title: Text("Spedah"),
        backgroundColor: Color(0xFF1F5460),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/byscle.png",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Let’s \nget started",
              style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Everything start from here",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 24),
          GlobalButton(
            buttonText: "Log In",
            iconPath: "",
            buttonColor: Color(0xFFFFCA42),
            textColor: Color(0xFF10405A),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return LoginScreen();
              }));
            },
          ),
          const SizedBox(height: 10),
          GlobalButton(
            buttonText: "Sign Up",
            iconPath: "",
            buttonColor: Color(0xFFDFE7D4),
            textColor: Color(0xFF10405A),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
