import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName ='SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer for 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(image: AssetImage(isDarkMode?"assets/images/splash_dark.png":'assets/images/splash_light.png')),
            Spacer(),
            Image(image: AssetImage(isDarkMode?"assets/images/pranding_dark.png":'assets/images/pranding_light.png'),),
          ],
        ),
      ),
    );
  }
}