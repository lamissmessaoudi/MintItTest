import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mintit/utils/assets.dart';

import 'package:mintit/utils/colors.dart';
import 'package:mintit/utils/text_content.dart';
import 'package:mintit/utils/text_styles.dart';
import 'package:mintit/view-models/login_bloc/login_bloc.dart';
import 'package:mintit/views/home/home_page.dart';
import 'package:mintit/widgets/button.dart';
import 'package:mintit/widgets/textfield.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.redLogo,
              width: 153,
              height: 38,
            ),
            const SizedBox(
              height: 48,
            ),
            loginForm(),
          ],
        ),
      ),
    );
  }

  Widget loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            TextContent.loginTitle,
            style: AppTextStyle.titleApp,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            TextContent.loginDescription,
            style: AppTextStyle.subTitleApp,
          ),
          const SizedBox(height: 15),

          ///Firstname TextField

          AppTextField(
              label: TextContent.firstNameLabel,
              hintText: TextContent.firstNameHint,
              controller: firstnameController),
          const SizedBox(
            height: 23,
          ),

          /// Lastname TextField

          AppTextField(
              label: TextContent.lastNameLabel,
              hintText: TextContent.lastNameHint,
              controller: lastnameController),

          const SizedBox(
            height: 99,
          ),

          /// Login button
          AppButton(
            onPressed: login,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  TextContent.buttonText,
                  style: AppTextStyle.buttonTextStyle,
                  textAlign: TextAlign.center,
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.secondaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read<LoginBloc>().add(
            LoginEvent(
              firstName: firstnameController.text,
              lastName: lastnameController.text,
            ),
          );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }
}
