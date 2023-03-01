import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/assets.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * .89,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(left: 8, right: 6),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Stack(
            children: [
              Container(
                height: 68,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Assets.person,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 2,
                top: 2,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dr. Haylie Siphron",
                    style:
                        TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .16,
                  ),
                  SizedBox(
                    width: 60,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.remove_red_eye_sharp,
                            size: 14,
                          ),
                          Text(
                            "12:30 AM",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ]),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Neurologists specialist",
                style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: 200,
                child: Text(
                  "Hi, nice to meet your, How can i help you",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 11.9, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
