import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/colors.dart';
import 'package:portfolio/resources/styling.dart';
import 'package:portfolio/screens/landing_page.dart';
import 'package:portfolio/utils/extensions.dart';

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
      body: context.screenConstraint().width < 1200
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: deviceSize.width * 0.4,
                    height: deviceSize.height * 0.4,
                    alignment: Alignment.center,
                    child: Lottie.asset(
                      fit: BoxFit.fitWidth,
                      'assets/animations/coding_aimation.json',
                      renderCache: RenderCache.drawingCommands,
                    ),
                  ),
                ),
                Container(
                  width: deviceSize.width * 0.5,
                  height: deviceSize.height * 0.4,
                  alignment: Alignment.center,
                  child: DefaultTextStyle(
                    style: AppTextStyle.fortyEightNormalGreenText,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Ideate'),
                        TyperAnimatedText('Code'),
                        WavyAnimatedText('Launch'),
                      ],
                      onTap: () {},
                      repeatForever: false,
                      isRepeatingAnimation: false,
                      onFinished: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                      },
                    ),
                  ),
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.4,
                  height: deviceSize.height * 0.4,
                  child: Lottie.asset(
                    fit: BoxFit.fitWidth,
                    'assets/animations/coding_aimation.json',
                    renderCache: RenderCache.drawingCommands,
                  ),
                ),
                SizedBox(
                  width: deviceSize.width * 0.1,
                ),
                SizedBox(
                  width: deviceSize.width * 0.5,
                  // height: deviceSize.height * 0.4,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 70.0,
                      color: AppColors.blackColor,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText('Ideate'),
                        WavyAnimatedText('Code'),
                        WavyAnimatedText('Launch'),
                      ],
                      onTap: () {},
                      repeatForever: false,
                      isRepeatingAnimation: false,
                      onFinished: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
