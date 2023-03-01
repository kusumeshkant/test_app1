import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utilities/assets.dart';

import '../widgets/CarouselBox.dart';
import '../widgets/carouselSliderBox2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 15),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Hi,",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.notifications,
                                size: 25,
                              ),
                              Positioned(
                                right: 2,
                                top: 2,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                      child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 5, color: Colors.white),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Let's find your doctor",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.search),
                              hintText: "Search",
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      Divider.createBorderSide(context)),
                              filled: true,
                              contentPadding: const EdgeInsets.all(8)),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider(
                      items: const [CarouselBox(), CarouselBox()],
                      options: CarouselOptions(
                        aspectRatio: 2.2,
                        viewportFraction: 0.43,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider(
                      items: [
                        CarouselBox2(
                          color: Colors.transparent,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Assets.p1,
                                fit: BoxFit.fill,
                              )),
                        ),
                      ],
                      options: CarouselOptions(
                        aspectRatio: 2.2,
                        viewportFraction: 0.85,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Popular Doctors",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CarouselSlider(
                      items: [
                        CarouselBox2(
                          width: 250,
                          radius: 20,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Row(children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.yellow,
                                backgroundImage: AssetImage(Assets.person),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dr. Haylie Siphron",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    "Dermatologists",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "540 review",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        aspectRatio: 3.4,
                        viewportFraction: 0.7,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
