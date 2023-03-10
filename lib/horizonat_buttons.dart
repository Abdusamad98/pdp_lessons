import 'package:flutter/material.dart';

class HorizontalButtons extends StatelessWidget {
  final String updateButtonText;
  final String deleteButtonText;

  const HorizontalButtons({
    Key? key,
    required this.deleteButtonText,
    required this.updateButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: () {},
          child: Text(updateButtonText),
        )),
        SizedBox(width: 20),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(deleteButtonText),
          ),
        ),
      ],
    );
  }
}
