// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/global_widgets/global_arrow_back.dart';
import 'package:mehr_muruvvat/screens/loyihalar_screen/loyihalar_models/loyihalar_models.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';

class LoyihalarScreen extends StatefulWidget {
  const LoyihalarScreen({super.key});

  @override
  State<LoyihalarScreen> createState() => _LoyihalarScreenState();
}

class _LoyihalarScreenState extends State<LoyihalarScreen> {
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
            SizedBox(height: 20.h,),
            GlobalArrowBack(),
            GetMainCarusel(images: LoyihalarModels.images)
          ],
        ),
      ),
    );
  }
}
