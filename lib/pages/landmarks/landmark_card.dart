import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/discription.dart';
import 'package:awesome_places/widgets/share_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandMarkCard extends StatelessWidget {
  final String cardTitle;
  final String cardDiscription;
  final String cardImageUrl;
  const LandMarkCard(
      {super.key,
      required this.cardTitle,
      required this.cardDiscription,
      required this.cardImageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: mainBlack,
      //color: mainPurple,
      surfaceTintColor: bookGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShareText(
                textTitle: cardTitle, textColor: landLightBlue, textSize: 18),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                cardImageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Discription(paragraph: cardDiscription),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
