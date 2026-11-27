import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({
    super.key,
    required this.image,
    required this.text,
    this.subtext,
  });
  Image image;
  String text;
  String? subtext;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 25,
      children: [
        Center(child: Assets.images.headerImg.image(width: 300, height: 170)),
        SizedBox(height: 350, child: image),
        Text(
          textAlign: TextAlign.center,
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: 24,
            color: AppColors.primary,
          ),
        ),

        subtext != null
            ? Center(
              child: Text(
                textAlign: TextAlign.center,
                subtext!,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 20,
                  color: AppColors.primary,
                ),
              ),
            )
            : SizedBox(),
      ],
    );
  }
}
