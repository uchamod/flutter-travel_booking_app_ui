import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class BookRaw extends StatelessWidget {
  final int count;
  const BookRaw({super.key, required this.count});

  //variables
  final double rawCircle = 70;
  final double buttonW = 100;
  final double buttonH = 40;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: rawCircle,
          height: rawCircle,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [bookRed, bookGreen],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              count.toString(),
              style: const TextStyle(
                  color: bookWhite, fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Column(
          children: [
            const Text(
              "Add or Remove team members",
              style: TextStyle(
                  color: bookGrey, fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: buttonW,
                  height: buttonH,
                  decoration: BoxDecoration(
                    color: bookGreen,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: mainBlack,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Add +",
                      style: TextStyle(
                          color: mainBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: buttonW,
                  height: buttonH,
                  decoration: BoxDecoration(
                    color: bookRed,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: mainBlack,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Remove -",
                      style: TextStyle(
                          color: mainBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
