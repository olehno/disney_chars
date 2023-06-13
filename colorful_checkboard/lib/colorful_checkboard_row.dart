import 'package:flutter/material.dart';

class ColorfulCheckboardRow extends StatelessWidget {
  const ColorfulCheckboardRow({super.key, required this.isFirst});
final bool isFirst;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sideSize = size.width / 4;
    return Row(
      children: [
        Container(
          color: isFirst ? Colors.green : Colors.red,
          width: sideSize,
          height: sideSize,
        ),
        Container(
          color: isFirst ? Colors.purple : Colors.pink,
          width: sideSize,
          height: sideSize,
        ),
        Container(
          color: isFirst ? Colors.blue : Colors.brown,
          width: sideSize,
          height: sideSize,
        ),
        Container(
          color: isFirst ? Colors.cyan : Colors.amber,
          width: sideSize,
          height: sideSize,
        ),
      ],
    );
  }
}
