import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            "Screen 1",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
