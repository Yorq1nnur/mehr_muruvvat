import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mehr_muruvvat/screens/onboarding/page_data_model.dart';
import 'package:mehr_muruvvat/screens/onboarding/page_item.dart';
import 'package:mehr_muruvvat/utils/size/size_utils.dart';
import '../../utils/images/app_images.dart';
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

  List<PageDataModel> pagesData = [
    PageDataModel(
      iconPath: AppImages.splash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.firstSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.secondSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.thirdSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.fourSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.fiveSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.sixSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.sevenSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
    PageDataModel(
      iconPath: AppImages.eightSplash,
      title: "MEXR-MURUVVAT XAYRIYA JAMOAT FONDI",
      subtitle:
      "Mexr-Muruvvat Xayriya Jamoat Fondi",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
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
                      horizontalPadding: index == 0 ? 70.getW() : 55.getW(),
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
            ),
            SizedBox(height: 30.getH()),
          ],
        ),
      ),
    );
  }
}
