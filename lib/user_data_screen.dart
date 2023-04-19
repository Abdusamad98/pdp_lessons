import 'package:flutter/material.dart';
import 'package:pdp_lessons/main.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({Key? key}) : super(key: key);

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User data"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "User Name: ${prefs!.getString("name")}",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 12),
            TextField(
              onChanged: (value) async {
                await prefs!.setString("name", value);
              },
              decoration: InputDecoration(
                  hintText: "Update name", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            Text(
              "Last Math Score : ${prefs!.getInt("math_result")}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
