import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/intro_screens/screen1.dart';
import 'package:flutter_intro_screen/intro_screens/screen2.dart';
import 'package:flutter_intro_screen/intro_screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();

  //Keep track of last page
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      //page view
      PageView(
        controller: _controller,
        onPageChanged: (index) => {
          if (index == 2)
            {
              setState(() {
                isLastPage = true;
              })
            }
        },
        children: const [Screen1(), Screen2(), Screen3()],
      ),

      //container
      Container(
        alignment: const Alignment(0, 0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // skip  button
            GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: const Text("Skip")),

            // page indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: const WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                type: WormType.thinUnderground,
              ),
            ),

            // next button
            GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: const Text("Next")),
          ],
        ),
      ),
    ]));
  }
}
