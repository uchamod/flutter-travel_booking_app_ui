import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final double elaButtonW;
  final double elaButtonH;
  final double elaButtonText;
  const SaveButton(
      {super.key,
      required this.elaButtonW,
      required this.elaButtonH,
      required this.elaButtonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        autofocus: true,
        style: ElevatedButton.styleFrom(
            backgroundColor: mainYellow,
            elevation: 2,
            shadowColor: mainBlack,
            foregroundColor: mainBlack,
            fixedSize: Size(elaButtonW, elaButtonH)),
        onPressed: () {},
        child: Text(
          "Submit",
          style: TextStyle(
            fontSize: elaButtonText,
          ),
        ));
  }
}
