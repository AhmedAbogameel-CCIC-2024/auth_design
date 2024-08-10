import 'package:flutter/material.dart';

import '../core/utils/colors.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        alignment: Alignment.center,
        child: AppText(
          title: title,
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
