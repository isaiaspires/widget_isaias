import 'package:flutter/material.dart';

class Alinhamento extends StatelessWidget {
  const Alinhamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 120,
            width: 120,
            color: Colors.green,
            padding: const EdgeInsets.all(15),
          ),
          Container(
            height: 120,
            width: 120,
            color: Colors.yellow,
            padding: const EdgeInsets.all(15),
          ),
          Container(
            height: 120,
            width: 120,
            color: Colors.redAccent,
            padding: const EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}
