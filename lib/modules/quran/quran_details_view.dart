import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/model/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = '/QuranDetailsView';

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;
    if (verses.isEmpty) loadData(data.id);

    /// calling

    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text(data.nameEN)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.images.leftCornerImg.image(width: 90, height: 90),
                Text(
                  data.nameAR,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Assets.images.rightCornerImg.image(width: 90, height: 90),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              itemBuilder: (context, index) {
                return Text(
                  "{${index + 1}} ${verses[index]}",
                  textAlign: TextAlign.center,
                  style: textTheme.titleLarge?.copyWith(
                    color: AppColors.primary,
                    height: 1.6,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 2);
              },
              itemCount: verses.length,
            ),
          ),
          Assets.images.bottomDecorationImg.image(),
        ],
      ),
    );
  }

  List<String> verses = [];

  Future<void> loadData(String suraId) async {
    String content = await rootBundle.loadString("assets/quran/$suraId.txt");
    verses = content.split("\n");
    setState(() {});
  }
}
