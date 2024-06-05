import 'package:flutter/material.dart';
import 'package:nt_exam_6/data/models/detail_category_model/detail_category_model.dart';
import 'package:nt_exam_6/utils/styles/app_text_style.dart';
import 'package:nt_exam_6/utils/styles/size.dart';

import '../../../utils/colors/app_colors.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem(
      {super.key, required this.aboutCategoryModel, required this.index});

  final DetailCategoryModel aboutCategoryModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return index != 0
        ? SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12.h),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.cC6E5BA,
                  borderRadius: BorderRadius.only(
                      topRight: (index == aboutCategoryModel.images.length - 1)
                          ? const Radius.circular(33)
                          : const Radius.circular(0))),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: 135.w,
                    height: 137.h,
                    child: Stack(
                      children: [
                        Image.asset(aboutCategoryModel.images[index],
                            width: 135.w, height: 137.h, fit: BoxFit.contain),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                              child: Text(index.toString(),
                                  style: AppTextStyle.width600
                                      .copyWith(fontSize: 25.w))),
                        )
                      ],
                    ),
                  ),
                  Text(aboutCategoryModel.childDescriptions[index],
                      style: AppTextStyle.width600),
                  SizedBox(height: 17.h),
                  Container(
                    height: 517.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 57.w, vertical: 36.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                            topRight:
                                (index == aboutCategoryModel.images.length - 1)
                                    ? const Radius.circular(45)
                                    : const Radius.circular(0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            aboutCategoryModel.parentDescriptions[index]
                                .toUpperCase(),
                            textAlign: TextAlign.center,
                            style: AppTextStyle.width600.copyWith(
                                color: AppColors.black, fontSize: 24.w)),
                        SizedBox(height: 16.h),
                        Container(
                            width: 64.w,
                            height: 12.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.black)),
                        SizedBox(height: 28.h),
                        Text(
                            aboutCategoryModel.titleOfCategory[0].toUpperCase(),
                            textAlign: TextAlign.center,
                            style: AppTextStyle.width600.copyWith(
                                color: AppColors.black, fontSize: 24.w)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        : SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12.h),
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(33),
                  ),
                  color: AppColors.cC6E5BA),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Image.asset(aboutCategoryModel.images[index],
                      width: 135.w, height: 137.h),
                  SizedBox(height: 35.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 57.w, vertical: 36.h),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(45))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("YES:",
                              style: AppTextStyle.width400.copyWith(
                                  color: AppColors.c70B458, fontSize: 24.w)),
                          Text(
                            aboutCategoryModel.parentDescriptions[index]
                                .toLowerCase(),
                            style: AppTextStyle.width400.copyWith(
                                color: AppColors.black, fontSize: 24.w),
                          ),
                          SizedBox(height: 29.h),
                          Text("NO:",
                              style: AppTextStyle.width600.copyWith(
                                  color: AppColors.cD63D3D, fontSize: 24.w)),
                          Text(
                              aboutCategoryModel.titleOfCategory[index]
                                  .toLowerCase(),
                              style: AppTextStyle.width400.copyWith(
                                  color: AppColors.black, fontSize: 24.w)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
