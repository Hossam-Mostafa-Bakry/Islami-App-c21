import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/model/hadith_data_model.dart';
import 'package:islami_app_c21/modules/hadith/widgets/hadith_card_item.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithDataModel> _hadithData = [];

  @override
  Widget build(BuildContext context) {
    if (_hadithData.isEmpty) loadHadithData();
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        spacing: 20,
        children: [
          Assets.images.headerImg.image(),
          Expanded(
            child: CarouselSlider(
              items: _hadithData.map((hadith) {
                return HadithCardItem(hadithModel: hadith);
              },).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.62,
                aspectRatio: 16 / 9,
                viewportFraction: 0.85,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadHadithData() async {
    for (int i = 1; i <= 50; i++) {
      final content = await rootBundle.loadString("assets/hadeeth/h$i.txt");

      final titleLength = content.indexOf("\n");
      final title = content.substring(0, titleLength);
      final description = content.substring(titleLength + 1);

      final hadith = HadithDataModel(title: title, description: description);
      _hadithData.add(hadith);
    }
    setState(() {});
  }
}
