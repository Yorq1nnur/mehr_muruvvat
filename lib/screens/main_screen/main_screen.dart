// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/ibratli_videolar_screen/ibratli_videolar_screen.dart';
import 'package:mehr_muruvvat/screens/widgets/carusel_models.dart';
import 'package:mehr_muruvvat/screens/main_screen/get_container.dart';
import 'package:mehr_muruvvat/screens/main_screen/qilingan_ishlar_models.dart';
import 'package:mehr_muruvvat/screens/qilinayotgan_ishlar_screen/qilinayotgan_ishlar_screen.dart';
import 'package:mehr_muruvvat/screens/widgets/get_call_links.dart';
import 'package:mehr_muruvvat/utils/colors/app_colors.dart';
import 'package:mehr_muruvvat/utils/styles/app_text_style.dart';
import '../qilingan_ishlar_screen/qilingan_ishlar_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  final PageController pageController = PageController();

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
              height: 30.h,
            ),
            GetMainCarusel(
              images: qilinganIshlarModels,
            ),
            SizedBox(
              height: 50.h,
            ),
            GetZoomContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QilinganIshlarScreen(),
                  ),
                );
              },
              title: "QILINGAN ISHLAR",
            ),
            GetZoomContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QilinayotganIshlarScreen(),
                  ),
                );
              },
              title: "QILINAYOTGAN ISHLAR",
            ),
            GetZoomContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IbratliVideolarScreen(),
                  ),
                );
              },
              title: "IBRATLI VIDEOLAR",
            ),
            Spacer(),
            Center(
              child: Text(
                "Biz haqimizda:",
                style: AppTextStyle.bodoniBold.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.sp,
                ),
              ),
            ),
            GetCallLinks(),
          ],
        ),
      ),
    );
  }
}
