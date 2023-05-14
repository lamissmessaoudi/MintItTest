import 'package:flutter/material.dart';
import 'package:mintit/views/home/home_page.dart';
import 'package:mintit/views/login/login_page.dart';
import 'package:mintit/views/splash_screenp_age.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreenPage.routeName: (context) => const SplashScreenPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  HomePage.routeName: (context) => const HomePage(),
};
