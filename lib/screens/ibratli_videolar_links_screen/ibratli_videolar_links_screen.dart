// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/global_widgets/call_links.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/images/app_images.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IbratliVideolarLinksScreen extends StatefulWidget {
  const IbratliVideolarLinksScreen({
    super.key,
    required this.imagesPath,
    required this.youTubeLinks,
    required this.imagePath,
    required this.videoTitle,
  });

  final List<String> imagesPath;
  final String youTubeLinks;
  final String imagePath;
  final String videoTitle;

  @override
  State<IbratliVideolarLinksScreen> createState() =>
      _IbratliVideolarLinksScreenState();
}

class _IbratliVideolarLinksScreenState
    extends State<IbratliVideolarLinksScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: ZoomTapAnimation(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30.w,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GetMainCarusel(
              images: widget.imagesPath,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueAccent,
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.videoTitle,
                      style: AppTextStyle.interBold.copyWith(
                        color: AppColors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20.r,
                    ),
                    child: Image.asset(
                      widget.imagePath,
                    ),
                  ),
                  Center(
                    child: CallLinks(
                      link: widget.youTubeLinks,
                      imagePath: AppImages.youTube,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
