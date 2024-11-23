import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical/Login.dart';

class WalkThroughView extends StatefulWidget {
  const WalkThroughView({super.key});

  @override
  State<WalkThroughView> createState() => _WalkThroughViewState();
}

class _WalkThroughViewState extends State<WalkThroughView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: content(),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                    );
                  },
                  icon: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 400),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Text(
                      "Next",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return CarouselSlider(
      items: [
        Container(
          width: 200,
          //margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/walk2.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 200,
          // margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/walk1.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 550,
      ),
    );
  }
}