import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final String cardText;
  final Color textColor;
  final Color cardColor;
  const HomePageCard(
      {super.key,
      required this.cardText,
      required this.cardColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 120,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        cardText,
        style: TextStyle(
            color: textColor, fontSize: 15, fontWeight: FontWeight.w500),
      )),
    );
  }
}
