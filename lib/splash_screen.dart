import 'package:air_salon/app/core/values/colors.dart';
import 'package:air_salon/app/core/values/strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late Color color;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animation =
        ColorTween(begin: blue, end: deepPink).animate(controller);
    animation.addListener(() {
      setState(() {
        color = animation.value;
      });
    });
    controller.forward();
  }

route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const IntroPage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(
      AppStrings.appName,
      textScaleFactor: 3,
      style: TextStyle(color: color),
    )));
  }
}
