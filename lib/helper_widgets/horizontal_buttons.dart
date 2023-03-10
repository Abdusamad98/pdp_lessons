import 'package:flutter/material.dart';

class HorizontalButtons extends StatelessWidget {
  const HorizontalButtons({
    Key? key,
    required this.updateButtonText,
    required this.deleteButtonText,
  }) : super(key: key);

  final String updateButtonText;
  final String deleteButtonText;

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
