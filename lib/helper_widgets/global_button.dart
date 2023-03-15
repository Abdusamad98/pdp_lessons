import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    Key? key,
    required this.buttonText,
    required this.iconPath,
    required this.buttonColor,
    required this.textColor, required this.onTap,
  }) : super(key: key);

  final String buttonText;
  final String iconPath;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconPath.isNotEmpty
                ? Image.asset(
                    iconPath,
                    width: 24,
                    height: 24,
                  )
                : const SizedBox(),
            const SizedBox(width: 10),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
