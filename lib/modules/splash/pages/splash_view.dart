import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/modules/layout/pages/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = '/splash';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    /// 1- push
    /// 2- pushReplacement
    /// 3- pushAndRemoveUntil
    /// 4- pop

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).pushNamedAndRemoveUntil(LayoutView.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Assets.images.splashLogo.svg()));
  }
}
