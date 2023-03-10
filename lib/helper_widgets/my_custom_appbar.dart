import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSize {
  const MyCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation: 0,
      title: Text("User Profile"),
      leading: IconButton(
        onPressed: (){},
        icon: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            print("HELLO STUDENTS");
          },
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit),
        ),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 56);
}
