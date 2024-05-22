import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/discription.dart';
import 'package:awesome_places/widgets/share_texts.dart';
import 'package:flutter/material.dart';

class NightLifePage extends StatelessWidget {
  const NightLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 35,
        // leading: leadingIcon,
        title: const ShareText(
            textTitle: "Nightlife", textColor: nightOrange, textSize: 28),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 15,
              ),
              ShareText(
                  textTitle: "Nightlife Place-1",
                  textColor: nightLightOrange,
                  textSize: 18),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "assets/night1.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              const Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 15,
              ),
              ShareText(
                  textTitle: "Nightlife Place-2",
                  textColor: nightLightOrange,
                  textSize: 18),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "assets/night2.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              const Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
