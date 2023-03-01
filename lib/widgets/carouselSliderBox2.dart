import 'package:flutter/material.dart';

class CarouselBox2 extends StatelessWidget {
  const CarouselBox2(
      {super.key,
      this.height,
      this.radius,
      this.width,
      this.child,
      this.color});
  final double? height;
  final double? width;
  final double? radius;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 80,
        width: width ?? 310,
        decoration: BoxDecoration(
          color: color ?? Colors.red,
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),
        child: child);
  }
}
