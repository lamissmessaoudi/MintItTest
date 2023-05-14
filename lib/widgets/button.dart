import 'package:flutter/material.dart';
import 'package:mintit/utils/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.child,
    super.key,
  });
  final void Function()? onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onPressed,
        child: Container(
            width: 209,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: AppColors.backgroundRedGradientColor,
            ),
            child: child),
      ),
    );
  }
}
