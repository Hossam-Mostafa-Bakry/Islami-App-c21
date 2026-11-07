import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/theme/app_theme_manager.dart';
import 'package:islami_app_c21/modules/layout/pages/layout_view.dart';
import 'package:islami_app_c21/modules/quran/quran_details_view.dart';
import 'package:islami_app_c21/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}


/// Navigation
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // [2,3,1,5,67]

  // {
//  Key: Value
// }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeManager.getThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName : (context) => SplashView(),
        LayoutView.routeName : (context) => LayoutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
