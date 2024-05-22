import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/discription.dart';
import 'package:awesome_places/widgets/share_texts.dart';
import 'package:awesome_places/widgets/sharedwidgets/ElavatorButton.dart';
import 'package:awesome_places/widgets/sharedwidgets/rate_bar.dart';

import 'package:awesome_places/widgets/sharedwidgets/textform.dart';
import 'package:flutter/material.dart';

class CulturePage extends StatelessWidget {
  const CulturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 35,
          // leading: leadingIcon,
          title: const ShareText(
              textTitle: "Cultural", textColor: cultureRed, textSize: 28),
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
                        height: 10,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        "assets/Cultural 1.png",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                        style: TextStyle(
                          color: paragraphColor,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Center(
                        child: ShareText(
                            textTitle: "Rate this Place",
                            textColor: cultureOrange,
                            textSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RateBar(),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                        style: TextStyle(
                          color: paragraphColor,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Center(
                        child: ShareText(
                            textTitle: "Send Feedback",
                            textColor: cultureOrange,
                            textSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextForm(
                        hintT: "Add Text Here...",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SaveButton(
                            elaButtonW: 100,
                            elaButtonH: 40,
                            elaButtonText: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                    ]))));
  }
}
