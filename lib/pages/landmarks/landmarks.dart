import 'package:awesome_places/pages/landmarks/landmark_card.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/discription.dart';
import 'package:awesome_places/widgets/share_texts.dart';
import 'package:flutter/material.dart';

class LandMarks extends StatelessWidget {
  const LandMarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 35,
        // leading: leadingIcon,
        title: const ShareText(
            textTitle: "Landmarks", textColor: landBlue, textSize: 28),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              SizedBox(
                height: 15,
              ),
              LandMarkCard(
                cardTitle: "Landmarks Place-1",
                cardDiscription:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler",
                cardImageUrl:
                    "https://www.usnews.com/object/image/00000169-5e06-df95-a57d-7ec6e0e70000/16-leaning-tower-of-pisa-getty.jpg?update-time=1706735236094&size=responsive640",
              ),
              SizedBox(
                height: 20,
              ),
              LandMarkCard(
                cardTitle: "Landmarks Place-1",
                cardDiscription:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler",
                cardImageUrl:
                    "https://www.usnews.com/object/image/00000169-5e06-df95-a57d-7ec6abfb0000/5-taj-mahal-getty.jpg?update-time=1706734280787&size=responsive640",
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
