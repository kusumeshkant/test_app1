import 'package:flutter/material.dart';

class CarouselBox extends StatelessWidget {
  const CarouselBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        //height: 80,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(children: [
          Container(
            height: 110,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.favorite,
              size: 60,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: Text(
              "Heart",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ),
        ]),
      ),
    );
  }
}
