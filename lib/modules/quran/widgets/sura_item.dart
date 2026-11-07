import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/model/sura_data_model.dart';

class SuraItem extends StatelessWidget {

  final SuraDataModel suraDataModel;
  final void Function()? onTap;

  const SuraItem(
      {super.key, required this.suraDataModel, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        spacing: 24,
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.icons.imgSurNumberFrame.provider(),
              ),
            ),
            child: Text(suraDataModel.id, style: textTheme.titleMedium),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(suraDataModel.nameEN, style: textTheme.titleLarge),
              Text(
                "${suraDataModel.ayaNumbers} Verses",
                style: textTheme.titleSmall?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(suraDataModel.nameAR, style: textTheme.titleLarge),
        ],
      ),
    );
  }
}
