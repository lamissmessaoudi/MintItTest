import 'package:flutter/material.dart';
import 'package:mintit/models/pilot.dart';
import 'package:mintit/utils/colors.dart';
import 'package:mintit/utils/text_styles.dart';

class PilotCard extends StatelessWidget {
  const PilotCard({
    required this.pilot,
    super.key,
  });
  final Pilot pilot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 27,
        vertical: 12,
      ),
      child: Row(
        children: [
          Text(
            pilot.id,
            style: AppTextStyle.pilotId,
          ),
          const SizedBox(
            width: 31,
          ),
          CircleAvatar(
            backgroundColor: AppColors.secondaryColor,
            radius: 30,
            backgroundImage: AssetImage(pilot.imgPath),
          ),
          const SizedBox(
            width: 31,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pilot.name,
                style: AppTextStyle.pilotName,
              ),
              Text(
                pilot.car,
                style: AppTextStyle.pilotCar,
              ),
            ],
          )
        ],
      ),
    );
  }
}
