// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/ibratli_videolar_links_screen/ibratli_videolar_links_screen.dart';
import 'package:mehr_muruvvat/screens/qilingan_ishlar_screen/models/qilingan_ishlar_youtube_links.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IbratliVideolarScreen extends StatefulWidget {
  const IbratliVideolarScreen({super.key});

  @override
  State<IbratliVideolarScreen> createState() => _IbratliVideolarScreenState();
}

class _IbratliVideolarScreenState extends State<IbratliVideolarScreen> {
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
            const GetMainCarusel(
              images: IbratliVideolarYouTubeLinks.images,
            ),
            Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                  ),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ...List.generate(
                          IbratliVideolarYouTubeLinks.videoTitles.length,
                          (index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                ),
                                child: ZoomTapAnimation(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            IbratliVideolarLinksScreen(
                                          youTubeLinks:
                                              IbratliVideolarYouTubeLinks.youTubeLinks[index],
                                          imagesPath: IbratliVideolarYouTubeLinks.images,
                                          imagePath: IbratliVideolarYouTubeLinks.images[index],
                                          videoTitle:
                                              IbratliVideolarYouTubeLinks.videoTitles[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          IbratliVideolarYouTubeLinks.videoTitles[index],
                                          style:
                                              AppTextStyle.bodoniBold.copyWith(
                                            color: AppColors.black,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          16.r,
                                        ),
                                        child: Image.asset(
                                          IbratliVideolarYouTubeLinks.images[index],
                                          height: 200.h,
                                          width: double.infinity,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
