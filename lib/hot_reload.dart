import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: const Center(
          child: Text(
            "Flutter Gradiente",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                decoration: TextDecoration.none),
          ),
        ),
        //Cria o fundo gradiente
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Colors.purpleAccent,
                Colors.blueAccent,
              ]),
        ),
      ),
    );
  }
}
