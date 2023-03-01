import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/chat_screens.dart';
import 'package:flutter_application_1/screens/home_screens.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';

import 'bottom_buton.dart';

class BackGroundScreen extends StatefulWidget {
  const BackGroundScreen({super.key});

  @override
  State<BackGroundScreen> createState() => _BackGroundScreenState();
}

class _BackGroundScreenState extends State<BackGroundScreen> {
  bool b1 = true;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool b5 = false;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: Colors.white.withOpacity(1),
              child: IndexedStack(index: selectedIndex, children: const [
                HomeScreen(),
                ChatScreen(),
                SplashScreen(),
                HomeScreen(),
                ChatScreen()
              ]),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                height: MediaQuery.of(context).size.height * .067,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomButton(
                        ischanges: b1,
                        OnTap: () {
                          setState(() {
                            selectedIndex = 0;
                            b1 = true;
                            b2 = false;
                            b3 = false;
                            b4 = false;
                            b5 = false;
                          });
                        },
                        icons: Icon(Icons.home),
                        lable: "Home",
                      ),
                      BottomButton(
                        ischanges: b2,
                        OnTap: () {
                          setState(() {
                            selectedIndex = 1;
                            b1 = false;
                            b2 = true;
                            b3 = false;
                            b4 = false;
                            b5 = false;
                          });
                        },
                        icons: Icon(Icons.home),
                        lable: "Home",
                      ),
                      BottomButton(
                        ischanges: b3,
                        OnTap: () {
                          setState(() {
                            selectedIndex = 2;
                            b1 = false;
                            b2 = false;
                            b3 = true;
                            b4 = false;
                            b5 = false;
                          });
                        },
                        icons: Icon(Icons.home),
                        lable: "Home",
                      ),
                      BottomButton(
                        ischanges: b4,
                        OnTap: () {
                          setState(() {
                            selectedIndex = 3;
                            b1 = false;
                            b2 = false;
                            b3 = false;
                            b4 = true;
                            b5 = false;
                          });
                        },
                        icons: Icon(Icons.home),
                        lable: "Home",
                      ),
                      BottomButton(
                        ischanges: b5,
                        OnTap: () {
                          setState(() {
                            selectedIndex = 4;
                            b1 = false;
                            b2 = false;
                            b3 = false;
                            b4 = false;
                            b5 = true;
                          });
                        },
                        icons: Icon(Icons.home),
                        lable: "Home",
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
