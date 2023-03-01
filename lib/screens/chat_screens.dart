import 'package:flutter/material.dart';

import '../widgets/chat_card.dart';
import '../widgets/circular_profile.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Center(
                child: Text(
                  "Chat Room",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Icon(Icons.menu)
            ],
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
              child: const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search",
                    filled: false,
                    contentPadding: EdgeInsets.all(8)),
                keyboardType: TextInputType.name,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                shrinkWrap: false,
                itemBuilder: ((context, index) {
                  return const CircularProfile();
                })),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .72,
            child: ListView.builder(
                itemCount: 12,
                shrinkWrap: false,
                itemBuilder: ((context, index) {
                  return const ChatCard();
                })),
          ),
        ]),
      ),
    );
  }
}
