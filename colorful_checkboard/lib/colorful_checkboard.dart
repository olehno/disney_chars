import 'package:flutter/material.dart';

class ColorfulCheckboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sideSize = size.width / 4;
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.green,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.red,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.blue,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.purple,
              width: sideSize,
              height: sideSize,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.redAccent,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.teal,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.transparent,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.yellow,
              width: sideSize,
              height: sideSize,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.indigo,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.indigoAccent,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.orange,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.orangeAccent,
              width: sideSize,
              height: sideSize,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.purple,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.pink,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.pinkAccent,
              width: sideSize,
              height: sideSize,
            ),
            Container(
              color: Colors.purpleAccent,
              width: sideSize,
              height: sideSize,
            ),
          ],
        ),
      ],
    );
  }
}
