import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/model/hadith_data_model.dart';

class HadithCardItem extends StatelessWidget {
  final HadithDataModel hadithModel;

  const HadithCardItem({super.key, required this.hadithModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(top: 12, left: 12, right: 12),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: Assets.images.hadithCardBackground.provider(),
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.images.leftCornerImg.image(
                    width: 90,
                    height: 90,
                    color: Colors.black,
                  ),
                  Assets.images.rightCornerImg.image(
                    width: 90,
                    height: 90,
                    color: Colors.black,
                  ),
                ],
              ),
              Assets.images.bottomDecorationImg.image(color: Colors.black),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                Text(
                  hadithModel.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: theme.textTheme.headlineSmall?.copyWith(),
                ),
                SizedBox(height: 15),
                Text(
                  hadithModel.description,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
