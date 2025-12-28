
import 'dart:math';

import 'package:flutter/material.dart';

class SebhaWidgets extends StatelessWidget {
  final double angle;
  final VoidCallback onTap;
  final String tasbeeh;
  final int counter;

  const SebhaWidgets({
    super.key,
    required this.angle,
    required this.onTap,
    required this.tasbeeh,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Transform.rotate(
                    angle: angle * (pi / 400),
                    child: Image.asset(
                      "assets/images/sebha_photo.png",
                      height: 400,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/sebha_photo2.png",
                  height: 90,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tasbeeh,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "$counter",
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
