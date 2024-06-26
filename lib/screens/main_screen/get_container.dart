import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/styles/app_text_style.dart';

class GetZoomContainer extends StatefulWidget {
  const GetZoomContainer(
      {super.key,
      required this.onTap,
      required this.title,
      });

  final VoidCallback onTap;
  final String title;

  @override
  State<GetZoomContainer> createState() => _GetZoomContainerState();
}

class _GetZoomContainerState extends State<GetZoomContainer> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.blue,
              spreadRadius: 5.r,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.title,
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
