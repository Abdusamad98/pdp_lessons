import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
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
            Icon(
              Icons.person,
              size: 200,
            ),
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
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Update"),
                    )),
                SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Delete account"),
                  ),
                ),
              ],
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
            Container(
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
            ),

          ],
        ),
      ),
    ),
  ));
}
