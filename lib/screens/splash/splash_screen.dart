import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/size/size_utils.dart';
import '../onboarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OnBoardingScreen();
            },
          ),
        );
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  AppImages.splash,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50.h,
              left: 10.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.firstSplash,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50.h,
              right: 10.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.secondSplash,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50.h,
              left: 135.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.thirdSplash,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 130.h,
              right: 70.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.flag,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 130.h,
              left: 70.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.calendar,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "MEXR-MURUVVAT XJF",
                style: AppTextStyle.interBold.copyWith(
                  color: AppColors.blue,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              bottom: 50.h,
              left: 10.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.fiveSplash,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 50.h,
              right: 10.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.sixSplash,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 50.h,
              left: 135.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.sevenSplash,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 130.h,
              right: 70.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.logo,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 130.h,
              left: 70.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.glass,
                  width: width / 3.5.w,
                  height: width / 3.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
