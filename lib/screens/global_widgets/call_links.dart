import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CallLinks extends StatelessWidget {
  const CallLinks({
    super.key,
    required this.link,
    required this.imagePath,
  });

  final String link;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () async {
        await launchUrl(
          Uri.parse(
            link,
          ),
        );
      },
      child: Container(
        height: 30.h,
        width: 30.w,
        decoration: const BoxDecoration(
          color: AppColors.transparent,
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            height: 30.h,
            width: 30.w,
          ),
        ),
      ),
    );
  }
}
