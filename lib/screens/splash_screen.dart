import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resources/colors.dart';
import 'package:portfolio/screens/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Future.delayed(const Duration(milliseconds: 2000)).then((value) {
    //
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          /// upload lottie to firebase storage and use link lottie_player: ^0.0.5
          SizedBox(
            width: deviceSize.width * 0.5,
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 70.0,
                color: AppColors.blackColor,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Think'),
                  ScaleAnimatedText('Code'),
                  ScaleAnimatedText('Deploy'),
                ],
                onTap: () {},
                repeatForever: false,
                isRepeatingAnimation: false,
                onFinished: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
