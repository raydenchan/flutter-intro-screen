import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset('assets/animation/Animation - 1734191184236.json',
              width: 200, height: 200, fit: BoxFit.contain),
          const Text(
            "24/7 Customer Support",
            style: TextStyle(fontSize: 20),
          )
        ]),
      ),
    );
  }
}
