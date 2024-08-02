import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_assignment/app/modules/auth/home/home_screen.dart' as home;

class SplashView2 extends StatefulWidget {
  const SplashView2({Key? key}) : super(key: key);

  static const String routeName = '/splash';

  @override
  State<SplashView2> createState() => _SplashView2State();
}

class _SplashView2State extends State<SplashView2> with TickerProviderStateMixin {
  final int splashDuration = 3;
  late final AnimationController controller;
  late final Tween<double> opacityTween = Tween(begin: 0, end: 1);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    Timer(Duration(seconds: splashDuration), checkLogin);
  }

  void checkLogin() {
    context.go(home.HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => AnimatedOpacity(
            opacity: controller.value,
            duration: Duration(milliseconds: 800),
            child: Image.asset(
              'assets/images/logo2.jpeg',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
