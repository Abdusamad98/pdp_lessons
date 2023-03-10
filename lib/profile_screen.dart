import 'package:flutter/material.dart';
import 'package:pdp_lessons/horizonat_buttons.dart';

import 'my_logout_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 12,
              color: Colors.grey.shade300,
              offset: Offset(3, 6),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/download.jpeg",
                width: 100,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Falonchi",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Container(height: 1, color: Colors.grey),
            SizedBox(height: 10),
            Text(
              "Falonchiyev",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Birthdate: 01.01.2000",
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 30),
            HorizontalButtons(
              deleteButtonText: "DELETE",
              updateButtonText: "UPDATE",
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.indigoAccent,
                ),
                SizedBox(width: 50),
                Text(
                  "Anna Avetsyam",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(height: 1, color: Colors.grey),
            MyLogOutButton()
          ],
        ),
      ),
    );
  }
}
