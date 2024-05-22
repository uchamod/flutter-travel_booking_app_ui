import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class RateBar extends StatelessWidget {
  const RateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xffCACACA).withOpacity(0.3),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            color: mainYellow,
            size: 35,
          ),
          const Icon(
            Icons.star,
            color: mainYellow,
            size: 35,
          ),
          const Icon(
            Icons.star,
            color: mainYellow,
            size: 35,
          ),
          const Icon(
            Icons.star,
            color: mainYellow,
            size: 35,
          ),
          Icon(
            Icons.star,
            color: const Color(0xff3B3636).withOpacity(0.75),
            size: 35,
          ),
        ],
      ),
    );
  }
}
