import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/global_widgets/call_links.dart';
import 'package:mehr_muruvvat/screens/global_widgets/global_arrow_back.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/images/app_images.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LoyihalarLinksScreen extends StatefulWidget {
  const LoyihalarLinksScreen({
    super.key,
    required this.images,
    required this.title,
    required this.year,
    required this.link,
  });

  final List<String> images;
  final String title;
  final String year;
  final String link;

  @override
  State<LoyihalarLinksScreen> createState() => _LoyihalarLinksScreenState();
}

class _LoyihalarLinksScreenState extends State<LoyihalarLinksScreen> {
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
            const GlobalArrowBack(),
            GetMainCarusel(images: widget.images),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                "${widget.title}\n${widget.year}",
                style: AppTextStyle.bodoniBold.copyWith(
                  color: AppColors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 1.5,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                physics: const BouncingScrollPhysics(),
                crossAxisSpacing: 5.w,
                mainAxisSpacing: 5.h,
                crossAxisCount: 2,
                children: [
                  ...List.generate(
                    widget.images.length,
                    (index) => ZoomTapAnimation(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Image.asset(
                                widget.images[index],
                              ),
                              actions: [
                                ZoomTapAnimation(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Center(
                                    child: Text(
                                      'Cancel',
                                      style: AppTextStyle.bodoniBold.copyWith(
                                        color: AppColors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Image.asset(
                        widget.images[index],
                        // width: double.infinity,
                        // height: 100.h,
                        // fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "YOUTUBEDA KO'RISH",
                  style: AppTextStyle.bodoniBold.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CallLinks(
                  link: widget.link,
                  imagePath: AppImages.youTube,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
