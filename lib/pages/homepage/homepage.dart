import 'package:awesome_places/pages/booking_page/bookingpage.dart';
import 'package:awesome_places/pages/culture/culture_page.dart';
import 'package:awesome_places/pages/homepage/naturalwonder/natural_wonder.dart';
import 'package:awesome_places/pages/homepage/nightlife/night_life.dart';
import 'package:awesome_places/pages/landmarks/landmarks.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/discription.dart';
import 'package:awesome_places/widgets/homepagewidgets/homepage_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //varible
  final double topCircle = 45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Text(
                          "Awesome",
                          style:
                              TextStyle(color: Color(0xff6E7A76), fontSize: 18),
                        ),
                      ),
                      Text(
                        "Places",
                        style: TextStyle(
                            color: mainPurple,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: topCircle,
                    height: topCircle,
                    decoration: BoxDecoration(
                        color: mainPurple,
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ],
              ),
              const Discription(
                  paragraph:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/image 1.png",
                // scale: 1,
                // opacity: AlwaysStoppedAnimation<double>(0.8),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Select a Place from the categories",
                style: TextStyle(
                    color: mainPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalPage(),
                          ));
                    },
                    child: const HomePageCard(
                      cardText: "Natural Wonders",
                      cardColor: homeBlue,
                      textColor: mainBlack,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightLifePage(),
                          ));
                    },
                    child: const HomePageCard(
                      cardText: "Nightlife",
                      cardColor: homeBlue,
                      textColor: mainBlack,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandMarks(),
                          ));
                    },
                    child: const HomePageCard(
                      cardText: "Landmarks",
                      cardColor: homeLightBlue,
                      textColor: mainBlack,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CulturePage(),
                          ));
                    },
                    child: const HomePageCard(
                      cardText: "Cultural",
                      cardColor: homeLightBlue,
                      textColor: mainBlack,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingPage(),
                      ));
                },
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      color: mainYellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "Book For A Ride Today!",
                    style: TextStyle(
                        color: mainBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
