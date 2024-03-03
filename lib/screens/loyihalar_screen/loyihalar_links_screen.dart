import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/global_widgets/global_arrow_back.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';

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
          ],
        ),
      ),
    );
  }
}
