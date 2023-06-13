import 'package:colorful_checkboard/colorful_checkboard_row.dart';
import 'package:flutter/material.dart';

class Checkboard extends StatelessWidget {
  const Checkboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ColorfulCheckboardRow(isFirst: index % 2 == 0);
      },
    );
  }
}
