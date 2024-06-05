import 'package:flutter/material.dart';
import 'package:nt_exam_6/utils/styles/size.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_text_style.dart';



class CategoryItemContainer extends StatelessWidget {
  const CategoryItemContainer({super.key, required this.onTap, required this.title, required this.image});


  final VoidCallback onTap;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 140.w,
        height: 170.h,
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: AppColors.c70B458,
          borderRadius: BorderRadius.circular(30.w),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Center(
              child: Text(
                title,
                style: AppTextStyle.width500.copyWith(
                  fontSize: 20.w,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: Image.asset(
                image,
                width: 106.w,
                height: 106.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
