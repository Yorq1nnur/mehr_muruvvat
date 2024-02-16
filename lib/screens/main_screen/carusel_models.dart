import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/images/app_images.dart';
import '../../utils/size/size_utils.dart';

class GetMainCarusel extends StatefulWidget {
  const GetMainCarusel({super.key});

  @override
  State<GetMainCarusel> createState() => _GetMainCaruselState();
}

class _GetMainCaruselState extends State<GetMainCarusel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        caruselModels.length,
            (index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(caruselModels[index], width: 1280.w, height: 0.33 * height, fit: BoxFit.cover,),);
        },
      ),
      options: CarouselOptions(
        height: 0.33 * height,
        aspectRatio: 16 / 9,
        viewportFraction: 0.85,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (v, d) {},
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}


final List<String> caruselModels = [
  AppImages.logo,
  AppImages.splash,
  AppImages.thirdSplash,
  AppImages.sixSplash,
  AppImages.sevenSplash,
  AppImages.secondSplash,
  AppImages.glass,
  AppImages.fourSplash,
  AppImages.flag,
  AppImages.fiveSplash,
  AppImages.firstSplash,
  AppImages.eightSplash,
  AppImages.calendar,
];