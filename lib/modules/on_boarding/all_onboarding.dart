import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/modules/layout/pages/layout_view.dart';
import 'package:islami_app_c21/modules/on_boarding/custom_Indicator.dart';
import 'package:islami_app_c21/modules/on_boarding/on_boarding_page.dart';

class AllOnboarding extends StatefulWidget {
  AllOnboarding({super.key});
  static const String routeName = '/on_bording';
  @override
  State<AllOnboarding> createState() => _AllOnboardingState();
}

class _AllOnboardingState extends State<AllOnboarding> {
  PageController _controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: _controller,
                children: [
                  OnBoardingPage(
                    image: Assets.images.onBoarding.tra7eb.image(),
                    text: "Welcome To Islmi App",
                  ),
                  OnBoardingPage(
                    image: Assets.images.onBoarding.a2.image(),
                    text: "Welcome To Islmi App",
                    subtext: "We Are Very Excited To Have You In Our Community",
                  ),
                  OnBoardingPage(
                    image: Assets.images.onBoarding.a3.image(),
                    text: "Reading the Quran",
                    subtext: "Read, and your Lord is the Most Generous",
                  ),
                  OnBoardingPage(
                    image: Assets.images.onBoarding.a4.image(),
                    text: "Bearish",
                    subtext: "Praise the name of your Lord, the Most High",
                  ),
                  OnBoardingPage(
                    image: Assets.images.onBoarding.a5.image(),
                    text: "Holy Quran Radio",
                    subtext:
                        "You can listen to the Holy Quran Radio through the application for free and easily",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                index == 0
                    ? SizedBox(width: 70)
                    : SizedBox(
                        width: 70,
                        child: TextButton(
                          onPressed: () {
                            _controller.animateToPage(
                              index - 1,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.linear,
                            );
                          },
                          child: Text(
                            "Back",
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(
                                  fontSize: 16,
                                  color: AppColors.primary,
                                ),
                          ),
                        ),
                      ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (currentIndex) {
                    return CustomIndicator(active: currentIndex == index);
                  }),
                ),
                Spacer(),
                TextButton(
                  onPressed: index == 4
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LayoutView(),
                            ),
                          );
                        }
                      : () {
                          _controller.animateToPage(
                            index + 1,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.linear,
                          );
                        },
                  child: index == 4
                      ? SizedBox(
                          width: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Finish",
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(
                                  fontSize: 16,
                                  color: AppColors.primary,
                                ),
                          ),
                        )
                      : SizedBox(
                          width: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Next",
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(
                                  fontSize: 16,
                                  color: AppColors.primary,
                                ),
                          ),
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
