// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/colors/app_colors.dart';

class QilinganIshlarScreen extends StatefulWidget {
  const QilinganIshlarScreen({super.key});

  @override
  State<QilinganIshlarScreen> createState() => _QilinganIshlarScreenState();
}

class _QilinganIshlarScreenState extends State<QilinganIshlarScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: AppColors.white),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          leading: ZoomTapAnimation(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
