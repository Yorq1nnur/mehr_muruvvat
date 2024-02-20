import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/images/app_images.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../utils/app_url/app_url.dart';

class CallCenterScreen extends StatefulWidget {
  const CallCenterScreen({super.key});

  @override
  State<CallCenterScreen> createState() => _CallCenterScreen();
}

class _CallCenterScreen extends State<CallCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ZoomTapAnimation(
              onTap: () async {
                await launchUrl(Uri.parse(AppUrl.instagram,),);
                setState(() {

                });
              },
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: const BoxDecoration(
                  color: AppColors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    AppImages.instagram,
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            ZoomTapAnimation(
              onTap: () async {
                setState(() {

                });
                await launchUrl(Uri.parse(AppUrl.telegram,),);
              },
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: const BoxDecoration(
                    color: AppColors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    AppImages.telegram,
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            ZoomTapAnimation(
              onTap: () async {
                setState(() {

                });
                await launchUrl(Uri.parse(AppUrl.youTube,),);
              },
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: const BoxDecoration(
                    color: AppColors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                   AppImages.youTube,
                    height: 30.h,
                    width: 30.w,
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