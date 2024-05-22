import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class Discription extends StatelessWidget {
  final String paragraph;
  const Discription({super.key, required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        paragraph,
        style: TextStyle(fontSize: 15, color: paragraphColor),
      ),
    );
  }
}
