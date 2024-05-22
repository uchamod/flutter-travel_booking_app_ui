import 'package:flutter/material.dart';

class ShareText extends StatelessWidget {
  final String textTitle;
  final Color textColor;
  final double textSize;

  const ShareText({
    super.key,
    required this.textTitle,
    required this.textColor,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }
}
