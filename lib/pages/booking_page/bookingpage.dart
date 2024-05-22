import 'package:awesome_places/pages/booking_page/booking_row.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/discription.dart';
import 'package:awesome_places/widgets/share_texts.dart';
import 'package:awesome_places/widgets/sharedwidgets/ElavatorButton.dart';
import 'package:awesome_places/widgets/sharedwidgets/rate_bar.dart';

import 'package:awesome_places/widgets/sharedwidgets/textform.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 35,
        // leading: leadingIcon,
        title: const ShareText(
            textTitle: "Lets Book A Tour!",
            textColor: mainPurple,
            textSize: 28),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const ShareText(
                  textTitle: "Select a vehical",
                  textColor: mainPurple,
                  textSize: 18),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Image.asset("assets/Mask group-1.png"),
                          const Text(
                            "Bike",
                            style: TextStyle(
                                color: bookBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(children: [
                        Image.asset("assets/Mask group-2.png"),
                        const Text(
                          "Bus",
                          style: TextStyle(
                              color: bookBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(children: [
                        Image.asset("assets/Mask group.png"),
                        const Text(
                          "Car",
                          style: TextStyle(
                              color: bookBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const ShareText(
                  textTitle: "Selected Place",
                  textColor: mainPurple,
                  textSize: 18),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    color: const Color(0xff000000).withOpacity(0.85),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      "assets/Cultural 1.png",
                      fit: BoxFit.fill,
                      opacity: const AlwaysStoppedAnimation<double>(0.5),
                    ),
                    const Positioned(
                        child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShareText(
                              textTitle: "Selected Place",
                              textColor: bookWhite,
                              textSize: 18),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            style: TextStyle(color: bookWhite, fontSize: 15),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          RateBar(),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const ShareText(
                  textTitle: "Fill The Details",
                  textColor: mainPurple,
                  textSize: 18),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "User Name",
                style: TextStyle(
                    color: bookGrey, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextForm(hintT: "John..."),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Country",
                style: TextStyle(
                    color: bookGrey, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextForm(hintT: "Canada..."),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Team Size",
                style: TextStyle(
                    color: bookGrey, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              const BookRaw(count: 3),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              const Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SaveButton(
                      elaButtonW: 120, elaButtonH: 50, elaButtonText: 20),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // BookingForm(),
              // const SizedBox(
              //   height: 30,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
