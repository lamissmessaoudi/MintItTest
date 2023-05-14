import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mintit/navigation/navigation_routes.dart';
import 'package:mintit/utils/colors.dart';
import 'package:mintit/view-models/login_bloc/login_bloc.dart';

import 'package:mintit/views/home/components/home_body.dart';

class HomePage extends StatefulWidget {
  static const String routeName = NavigationRoutes.homePage;

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }
          if (state is LoginFailed) {
            return const Center(
              child: Icon(
                Icons.supervised_user_circle,
                size: 20,
                color: AppColors.primaryColor,
              ),
            );
          }
          if (state is LoginSuccess) return const HomeBody();
          return const Center(
            child: Icon(
              Icons.block_flipped,
              size: 20,
              color: AppColors.primaryColor,
            ),
          );
        },
      ),
    ));
  }
}
