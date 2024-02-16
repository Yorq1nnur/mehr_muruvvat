import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/styles/app_text_style.dart';

class GetZoomContainer extends StatefulWidget {
  const GetZoomContainer({super.key, required this.onTap, required this.title, required this.containerColor, required this.spreadColors, required this.titleColor});

  final VoidCallback onTap;
  final String title;
  final Color containerColor;
  final Color spreadColors;
  final Color titleColor;

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
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: widget.spreadColors,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.title,
            style: AppTextStyle.interBold.copyWith(
              color: widget.titleColor,
              fontSize: 25.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );

  }
}
