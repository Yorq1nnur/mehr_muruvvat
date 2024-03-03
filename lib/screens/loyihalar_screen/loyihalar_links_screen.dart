import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/global_widgets/global_arrow_back.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';

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
                widget.title,
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
                childAspectRatio: 0.9,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                physics: const BouncingScrollPhysics(),
                crossAxisSpacing: 5,
                crossAxisCount: 2,
                children: [
                  ...List.generate(
                    widget.images.length,
                    (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(
                        16.r,
                      ),
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
            )
          ],
        ),
      ),
    );
  }
}
