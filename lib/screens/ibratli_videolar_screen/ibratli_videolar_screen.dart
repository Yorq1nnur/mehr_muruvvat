import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/main_screen/carusel_models.dart';
import 'package:mehr_muruvvat/screens/main_screen/qilingan_ishlar_models.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';

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
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30.w,
              ),
            ),
            
            ],
        ),
      ),
    );
  }
}
