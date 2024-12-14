import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset('assets/animation/Animation - 1734186918737.json',
              width: 200, height: 200, fit: BoxFit.contain),
          const Text(
            "Data Privacy Protection",
            style: TextStyle(fontSize: 20),
          )
        ]),
      ),
    );
  }
}
