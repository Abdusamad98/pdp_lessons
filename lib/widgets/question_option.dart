import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  const QuestionOption({Key? key, required this.text, required this.isSelected, required this.onTap})
      : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                spreadRadius: 4,
                color: Colors.grey.shade300,
              ),
            ]),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            isSelected?Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
            ):SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
