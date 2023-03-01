import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/assets.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, top: 10),
      child: Stack(children: [
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.red,
          backgroundImage: AssetImage(Assets.person),
        ),
        Positioned(
            right: 2,
            top: 2,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.green,
                  shape: BoxShape.circle),
            )),
      ]),
    );
  }
}
