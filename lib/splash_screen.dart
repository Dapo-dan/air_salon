import 'dart:async';

import 'package:air_salon/app/core/route/route.dart';
import 'package:air_salon/app/core/values/colors.dart';
import 'package:air_salon/app/core/values/strings.dart';
import 'package:air_salon/app/core/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushNamed(RouteManager.signup);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: _colorize()));
  }

  Widget _colorize() {
    return SizedBox(
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              AppStrings.appName,
              textStyle: AppStyles.colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
        ),
      ),
    );
  }

  List<Color> colorizeColors = [blue, deepPink, green, lightPink];
}
