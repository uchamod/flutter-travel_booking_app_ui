import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String hintT;

  const TextForm({
    super.key,
    required this.hintT,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(40),
        // ),
        // focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(30),
        //     borderSide: BorderSide(color: Colors.transparent)),
        border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                const BorderSide(color: Colors.transparent, strokeAlign: 5.0)),
        filled: true,
        fillColor: const Color(0xffCACACA).withOpacity(0.3),
        focusColor: Colors.amber,
        //enabled: false,
        hintText: hintT,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xff6E7A76).withOpacity(0.8),
        ),
      ),
    );
  }
}
