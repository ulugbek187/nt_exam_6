import 'package:flutter/material.dart';
import 'package:nt_exam_6/utils/styles/app_text_style.dart';
import 'package:nt_exam_6/utils/styles/size.dart';

class GlobalAppBarContainer extends StatelessWidget {
  const GlobalAppBarContainer({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: 10.h
      ),
      height: 48.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.w),
          bottomRight: Radius.circular(40.w),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: AppTextStyle.width400.copyWith(fontSize: 26.w),
        ),
      ),
    );
  }
}
