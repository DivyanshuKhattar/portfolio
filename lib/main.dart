import 'package:flutter/material.dart';
import 'package:portfolio/resources/colors.dart';
import 'package:portfolio/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor primaryOrange = const MaterialColor(
      0xFFFE9002,
      <int, Color>{
        50: AppColors.appBackgroundColor,
        100: AppColors.appBackgroundColor,
        200: AppColors.appBackgroundColor,
        300: AppColors.appBackgroundColor,
        400: AppColors.appBackgroundColor,
        500: AppColors.appBackgroundColor,
        600: AppColors.appBackgroundColor,
        700: AppColors.appBackgroundColor,
        800: AppColors.appBackgroundColor,
        900: AppColors.appBackgroundColor,
      },
    );
    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(
            textScaler: const TextScaler.linear(1.0),
            // textScaleFactor: 1,
          ),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Meri Bhakti',
      theme: ThemeData(
        primaryColor: AppColors.appBackgroundColor,
        primarySwatch: primaryOrange,
        scaffoldBackgroundColor: AppColors.appBackgroundColor,
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
