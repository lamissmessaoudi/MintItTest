import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mintit/models/pilot.dart';
import 'package:mintit/utils/colors.dart';

import 'package:mintit/utils/text_content.dart';
import 'package:mintit/utils/text_styles.dart';
import 'package:mintit/view-models/pilot_cubit/pilot_cubit.dart';
import 'package:mintit/widgets/pilot_card.dart';
import 'package:mintit/views/home/components/home_header.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          const HomeHeader(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 26,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 26),
                    Text(
                      TextContent.listTitleText,
                      style: AppTextStyle.homeTextStyle,
                    ),
                    const SizedBox(
                      height: (26),
                    ),
                    Expanded(
                      child: BlocBuilder<PilotCubit, PilotState>(
                        builder: (context, state) {
                          if (state is PilotLoading) {
                            return const Center(
                                child: LinearProgressIndicator(
                              color: AppColors.primaryColor,
                            ));
                          }
                          if (state is PilotFailed) {
                            return const Center(
                              child: Icon(Icons.block),
                            );
                          }
                          if (state is PilotRetrieved) {
                            return _buildList(state.pilots);
                          }
                          return const Center(
                            child: Icon(Icons.block),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildList(List<Pilot> pilots) {
    return ListView.builder(
      itemCount: pilots.length,
      itemBuilder: (BuildContext context, int index) {
        final pilot = pilots[index];
        return Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: PilotCard(
            pilot: pilot,
          ),
        );
      },
    );
    ;
  }
}
