import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset('assets/animation/Animation - 1734191082818.json',
              width: 200, height: 200, fit: BoxFit.contain),
          const Text(
            "Offline Access",
            style: TextStyle(fontSize: 20),
          )
        ]),
      ),
    );
  }
}
