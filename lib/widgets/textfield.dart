import 'package:flutter/material.dart';
import 'package:mintit/utils/colors.dart';
import 'package:mintit/utils/text_styles.dart';
import 'package:mintit/utils/form_validator.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.label,
    required this.hintText,
    required this.controller,
    super.key,
  });
  final String label;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 48,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyle.labelTextField,
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: FormValidator.login,
            style: AppTextStyle.inputFieldText,
            keyboardType: TextInputType.name,
            cursorColor: AppColors.textColor,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyle.hintStyle,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.bordorColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.selectedBorderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
