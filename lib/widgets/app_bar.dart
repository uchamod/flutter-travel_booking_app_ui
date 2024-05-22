import 'package:flutter/material.dart';

class sharedAppBar extends StatelessWidget {
  final String textTitle;
  final Color textColor;
  const sharedAppBar(
      {super.key, required this.textTitle, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back),
      title: Text(
        textTitle,
        style: TextStyle(
            color: textColor, fontSize: 28, fontWeight: FontWeight.w500),
      ),
    );
  }
}
