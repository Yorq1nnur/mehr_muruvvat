import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/app_url/app_url.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

class GetCallLinks extends StatefulWidget {
  const GetCallLinks({super.key});

  @override
  State<GetCallLinks> createState() => _GetCallLinksState();
}

class _GetCallLinksState extends State<GetCallLinks> {

  _launchCaller() async {
    const url = "tel:+998905898718";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    _launchCaller();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          ZoomTapAnimation(
            onTap: () async {
              setState(() {

              });
              await launchUrl(Uri.parse(AppUrl.facebook,),);
            },
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                color: AppColors.transparent,
              ),
              child: Center(
                child: Image.asset(
                  AppImages.facebook,
                  height: 30.h,
                  width: 30.w,
                ),
              ),
            ),
          ),
          ZoomTapAnimation(
            onTap: () async {
              _launchCaller();
              setState(() {

              });
              await launchUrl(Uri.parse(AppUrl.callCenter,),);
            },
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                color: AppColors.transparent,
              ),
              child: Center(
                child: Image.asset(
                  AppImages.callCenter,
                  height: 30.h,
                  width: 30.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
