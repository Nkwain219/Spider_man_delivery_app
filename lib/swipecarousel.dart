import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/onboardscreen1.dart';
import 'package:spider_man_delivery_app/onboardscreen2.dart';
import 'package:spider_man_delivery_app/onboardscreen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SwipeCarousel extends StatefulWidget {
  const SwipeCarousel({super.key});

  @override
  State<SwipeCarousel> createState() => _SwipeCarouselState();
}

class _SwipeCarouselState extends State<SwipeCarousel> {
 final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
            children: [
              SizedBox(height: double.infinity,
                child:
                PageView(
                  controller: _controller,
                  children: const [
                    OnBoardScreen1(),
                    OnBoardScreen2(),
                    OnBoardScreen3(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600,left: 170),
                child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const SwapEffect(
                      activeDotColor: Colors.red,
                      dotColor: Colors.grey,
                    ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
