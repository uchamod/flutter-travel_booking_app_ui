import 'package:flutter/material.dart';

class BookingForm extends StatelessWidget {
  const BookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          filled: true,
          fillColor: const Color(0xffCACACA).withOpacity(0.2),
          labelText: "User Name",
          labelStyle:
              TextStyle(color: const Color(0xff6E7A76).withOpacity(0.6))),
    );
  }
}
