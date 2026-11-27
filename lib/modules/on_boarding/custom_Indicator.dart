import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';


class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: active ? AppColors.primary : AppColors.lightgray,
        ),
        width: active ? 20 : 10,
        height: 10,
      ),
    );
  }
}
