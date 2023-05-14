import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mintit/utils/assets.dart';

import 'package:mintit/utils/colors.dart';
import 'package:mintit/navigation/navigation_routes.dart';

class SplashScreenPage extends StatefulWidget {
  static const String routeName = NavigationRoutes.spalshScreen;
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, NavigationRoutes.loginPage);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundRedGradientColor,
        ),
        child: Center(
          child: SvgPicture.asset(
            AppAssets.svgLogo,
          ),
        ),
      ),
    );
  }
}
