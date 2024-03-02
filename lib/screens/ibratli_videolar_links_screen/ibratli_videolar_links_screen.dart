// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/ibratli_videolar_screen/models/youtube_links.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IbratliVideolarLinksScreen extends StatefulWidget {
  const IbratliVideolarLinksScreen({
    super.key,
    required this.imagesPath,
    required this.youTubeLinks,
  });

  final List<String> imagesPath;
  final String youTubeLinks;

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
          ],
        ),
      ),
    );
  }
}
