import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Block(color: Colors.green, heigth: 120, width: 230),
        const Block(color: Colors.amber, heigth: 80, width: 80),
        const Block(color: Colors.blueAccent, heigth: 150, width: 300),
        const Block(color: Colors.redAccent, heigth: 100, width: 200),
      ],
    );
  }
}

class Block extends StatelessWidget {
  final double heigth, width;
  final Color color;
  const Block(
      {Key? key,
      required this.color,
      required this.heigth,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: heigth,
      width: width,
    );
  }
}
