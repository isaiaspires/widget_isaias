import 'package:flutter/material.dart';

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  _StoneState createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  String image = "https://i.imgur.com/jTqNa7D.png";

  int fragments = 0;
  int pieces = 0;
  int stones = 0;

  void updateStone() {
    setState(() {
      fragments++;

      if (fragments == 10) {
        pieces++;
        fragments = 0;
      }

      if (pieces == 10) {
        stones++;
        pieces = 0;
      }

      if (stones > 0) {
        image = "https://i.imgur.com/JAeGRb1.png";
      } else if (pieces > 0) {
        image = "https://i.imgur.com/IR5Sn6X.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: updateStone,
        child: Container(
          padding: const EdgeInsets.only(top: 45),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.imgur.com/etWX9CB.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                child: Image.network(image),
                height: 250,
              ),
              Center(
                child: Text(
                  "Stones: $stones",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Pieces: $pieces",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Fragments: $fragments",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
