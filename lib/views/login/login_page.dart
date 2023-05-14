import 'package:flutter/material.dart';

import 'package:mintit/utils/colors.dart';
import 'package:mintit/navigation/navigation_routes.dart';
import 'package:mintit/views/login/components/login_body.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = NavigationRoutes.loginPage;

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Center(
        child: LoginBody(),
      ),
    );
  }
}
