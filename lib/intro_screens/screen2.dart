import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink,
        child: const Center(
          child: Text(
            "Screen 2",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
