import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mintit/utils/assets.dart';
import 'package:mintit/utils/text_content.dart';
import 'package:mintit/utils/text_styles.dart';
import 'package:mintit/view-models/login_bloc/login_bloc.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 37,
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.userLogo,
            width: 67,
            height: 67,
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextContent.homePageGreetingText,
                style: AppTextStyle.homeTitleText,
              ),
              const SizedBox(
                height: 3,
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginSuccess) {
                    return Text(
                      "${state.user.firstName} ${state.user.lastName}",
                      style: AppTextStyle.userNameTextStyle,
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
