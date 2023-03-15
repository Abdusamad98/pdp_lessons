import 'package:flutter/material.dart';

import 'helper_widgets/global_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "Welcome back",
                style: TextStyle(
                    fontSize: 32,
                    color: Color(0xFF1F5460),
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Enter your credential to continue",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF879EA4),
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                onChanged: (currentValue) {},
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Email or username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                onChanged: (currentValue) {},
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
            ),
            const SizedBox(height: 15),
            GlobalButton(
              buttonText: "Log In",
              iconPath: "",
              buttonColor: Color(0xFFFFCA42),
              textColor: Color(0xFF10405A),
              onTap: () {},
            ),
            const SizedBox(height: 15),
            GlobalButton(
              buttonText: "Log In Using Apple",
              iconPath: "assets/images/apple.png",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onTap: () {},
            ),
            const SizedBox(height: 15),
            GlobalButton(
              buttonText: "Log In Using Google",
              iconPath: "assets/images/google.png",
              buttonColor: Color(0xFFF0F5F2),
              textColor: Color(0xFF10405A),
              onTap: () {},
            ),
            const SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "Don’t have account? Sign up",
                style: TextStyle(fontSize: 18, color: Color(0xFF1F5460)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
