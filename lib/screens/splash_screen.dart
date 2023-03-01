import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screens.dart';
import 'package:flutter_application_1/utilities/assets.dart';
import 'package:flutter_application_1/widgets/background_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CarouselSlider(
          items: [
            Image.asset(
              Assets.nature1,
              fit: BoxFit.cover,
            ),
            Image.asset(
              Assets.nature2,
              fit: BoxFit.fill,
            ),
            Image.asset(
              Assets.nature3,
              fit: BoxFit.fill,
            ),
          ],
          options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  selectedIndex = index;
                });
              },
              aspectRatio: .49,
              viewportFraction: 1.15,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              initialPage: selectedIndex),
        ),
        Positioned(
          bottom: 90,
          left: 170,
          child: SizedBox(
            width: 50,
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: selectedIndex == 0 ? Colors.green : Colors.white,
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: selectedIndex == 1 ? Colors.green : Colors.white,
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: selectedIndex == 2 ? Colors.green : Colors.white,
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 10,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BackGroundScreen()));
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.white),
              )),
        ),
        Positioned(
            bottom: 15,
            right: 10,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedIndex == 3) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BackGroundScreen()));
                    }
                    selectedIndex++;
                  });
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ))),
      ]),
    );
  }
}
