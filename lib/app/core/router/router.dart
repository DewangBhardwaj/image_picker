import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' as go_router;
import 'package:flutter_assignment/app/modules/splash/splash_screen.dart';
import 'package:flutter_assignment/app/modules/splash/splash_screen2.dart';
import 'package:flutter_assignment/app/modules/auth/home/home_screen.dart';

final router = go_router.GoRouter(
  initialLocation: SplashView.routeName,
  routes: [
    go_router.GoRoute(
      path: SplashView.routeName,
      builder: (context, state) => const SplashView(),
    ),
    go_router.GoRoute(
      path: SplashView2.routeName,
      builder: (context, state) => const SplashView2(),
    ),
    go_router.GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
