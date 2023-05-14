import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mintit/utils/colors.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:mintit/navigation/routes.dart';
import 'package:mintit/view-models/login_bloc/login_bloc.dart';
import 'package:mintit/view-models/pilot_cubit/pilot_cubit.dart';
import 'package:mintit/views/splash_screenp_age.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
        BlocProvider(
          create: (_) => PilotCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(AppColors.primaryColor);

    return MaterialApp(
      title: 'Formula1',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreenPage.routeName,
      routes: routes,
    );
  }
}
