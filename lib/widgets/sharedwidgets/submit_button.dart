import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHight;
  final double buttonFontSize;
  const SubmitButton(
      {super.key,
      required this.buttonWidth,
      required this.buttonHight,
      required this.buttonFontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHight,
      decoration: BoxDecoration(
        color: mainYellow,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 1, color: mainBlack),
      ),
      child: Center(
        child: Text(
          "Submit",
          style: TextStyle(
              color: mainBlack,
              fontSize: buttonFontSize,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
