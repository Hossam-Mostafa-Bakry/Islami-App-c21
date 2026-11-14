import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/model/sura_data_model.dart';

class MostRecentlyCard extends StatelessWidget {
  final SuraDataModel dataModel;

  const MostRecentlyCard({super.key, required this.dataModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(dataModel.nameEN, style: textTheme.headlineSmall),
              Text(dataModel.nameAR, style: textTheme.headlineSmall),
              Text(
                "${dataModel.ayaNumbers} Verses  ",
                style: textTheme.titleSmall,
              ),
            ],
          ),
          Assets.images.mostRecentImg.image(),
        ],
      ),
    );
  }
}
