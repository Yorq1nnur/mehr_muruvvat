import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/onboarding/page_data_model.dart';
import 'package:mehr_muruvvat/screens/onboarding/page_item.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/size/size_utils.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../main_screen/main_screen.dart';
import 'boarding_bottom_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int activeIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          title: ZoomTapAnimation(
            child: Text(
              "SKIP",
              style: AppTextStyle.interBold.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  ...List.generate(
                    pagesData.length,
                    (index) => PageItem(
                      pageDataModel: pagesData[index],
                      horizontalPadding: index == 0 ? 70.w : 55.w,
                    ),
                  )
                ],
              ),
            ),
            BoardingBottomView(
              pagesData: pagesData,
              activeIndex: activeIndex,
              onTap: () {
                if (activeIndex < pagesData.length - 1) {
                  setState(() {
                    activeIndex++;
                  });
                  pageController.jumpToPage(activeIndex);
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MainScreen();
                      },
                    ),
                  );
                }
              },
              backTap: () {
                if (activeIndex > 0) {
                  setState(() {
                    activeIndex--;
                  });
                  pageController.jumpToPage(activeIndex);
                } else {
                  return;
                }
              },
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
