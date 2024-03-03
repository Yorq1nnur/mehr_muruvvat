// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/global_widgets/global_arrow_back.dart';
import 'package:mehr_muruvvat/screens/loyihalar_screen/loyihalar_links_screen.dart';
import 'package:mehr_muruvvat/screens/loyihalar_screen/loyihalar_models/loyihalar_models.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LoyihalarScreen extends StatefulWidget {
  const LoyihalarScreen({super.key});

  @override
  State<LoyihalarScreen> createState() => _LoyihalarScreenState();
}

class _LoyihalarScreenState extends State<LoyihalarScreen> {
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            GlobalArrowBack(),
            GetMainCarusel(images: LoyihalarModels.images),
            SizedBox(
              height: 20.h,
            ),
            ...List.generate(
              LoyihalarModels.loyihalarTitles.length,
              (index) => ZoomTapAnimation(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoyihalarLinksScreen(
                          images: LoyihalarModels.simpleImagesPath[index],
                          title: LoyihalarModels.loyihalarTitles[index],
                          year: LoyihalarModels.years[index],
                          link: LoyihalarModels.youTubeLinks[index]),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.yellowAccent,
                      width: 3.w,
                    ),
                    borderRadius: BorderRadius.circular(
                      16.r,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      LoyihalarModels.loyihalarTitles[index],
                      style: AppTextStyle.bodoniBold.copyWith(
                        color: AppColors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
