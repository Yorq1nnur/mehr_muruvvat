import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mehr_muruvvat/screens/onboarding/page_data_model.dart';
import 'package:mehr_muruvvat/utils/size/size_utils.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/styles/app_text_style.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, required this.pageDataModel, required this.horizontalPadding});

  final PageDataModel pageDataModel;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(pageDataModel.iconPath, height: 200.h, width: 200.w, fit: BoxFit.cover,)),
          SizedBox(height: 50.getH()),
          Text(
            pageDataModel.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppTextStyle.interBold.copyWith(
              fontSize: 24,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: 16.getH()),
          Text(
            pageDataModel.subtitle,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular.copyWith(
              fontSize: 16,
              color: AppColors.c_090F47.withOpacity(0.45),
            ),
          ),
        ],
      ),
    );
  }
}
