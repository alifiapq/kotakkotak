library kotak;

import 'package:flutter/material.dart';

// class Kotak extends StatelessWidget{
class Kotak extends StatefulWidget{
  Kotak({required this.color});
  Color color;
  // final Color color;
  // final double width;
  // final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      margin: const EdgeInsets.all(10.0),
      // color: color, *error assertion
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
    );
  }
}

