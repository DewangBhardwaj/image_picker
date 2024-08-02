import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_assignment/app/modules/splash/splash_screen2.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  final int splashDuration = 3;
  late final AnimationController controller;
  late final Tween<double> opacityTween = Tween(begin: 0.0, end: 1.0);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    controller.forward();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {});
    Timer(Duration(seconds: splashDuration), checkLogin);
  }

  void checkLogin() {
    context.go(SplashView2.routeName);
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
              'assets/images/logo.jpeg',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
