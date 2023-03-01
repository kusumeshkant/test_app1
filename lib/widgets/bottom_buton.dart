import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key,
      required this.icons,
      required this.lable,
      required this.OnTap,
      this.ischanges = false});

  final String lable;
  final Icon icons;
  final bool ischanges;
  final Function() OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        height: 40,
        width: ischanges ? 70 : 24,
        decoration: BoxDecoration(
          color: ischanges ? Colors.red : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          icons,
          Visibility(visible: ischanges, child: Text(lable)),
        ]),
      ),
    );
  }
}
