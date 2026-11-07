import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/model/bottom_bar_item_data.dart';
import 'package:islami_app_c21/modules/hadith/hadith_view.dart';
import 'package:islami_app_c21/modules/quran/quran_view.dart';
import 'package:islami_app_c21/modules/radio/radio_view.dart';
import 'package:islami_app_c21/modules/tasbeh/tasbeh_view.dart';
import 'package:islami_app_c21/modules/times/times_view.dart';

/// version control system
/// [Git, Github]

/// versioned [Tracking]
/// unVersioned
///

class LayoutView extends StatefulWidget {
  static const routeName = '/layout-view';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  final List<BottomBarItemData> _bottomBarItems = [
    BottomBarItemData(Assets.icons.quranIcn, "Quran"),
    BottomBarItemData(Assets.icons.hadithIcn, "Hadith"),
    BottomBarItemData(Assets.icons.sebhaIcn, "Tasbeh"),
    BottomBarItemData(Assets.icons.radioIcn, "Radio"),
    BottomBarItemData(Assets.icons.timeIcn, "Times"),
  ];

  final List<Widget> _pages = [
    QuranView(),
    HadithView(),
    TasbehView(),
    RadioView(),
    TimesView(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: _bottomBarItems.map((item) {
          return BottomNavigationBarItem(
            icon: item.itemIcon.svg(width: 24, height: 24),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: AppColors.darkBlack.withValues(alpha: 0.5),
              ),
              child: item.itemIcon.svg(
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            ),
            label: item.itemName,
          );
        }).toList(),
      ),
    );
  }
}
