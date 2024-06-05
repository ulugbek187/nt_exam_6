import 'package:flutter/material.dart';
import 'package:nt_exam_6/data/models/detail_category_model/detail_category_model.dart';
import 'package:nt_exam_6/screen/detail_screen/widgets/detail_item.dart';
import 'package:nt_exam_6/utils/styles/app_text_style.dart';
import 'package:nt_exam_6/utils/styles/size.dart';

import '../../utils/colors/app_colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.subCategoryModel});

  final DetailCategoryModel subCategoryModel;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(widget.subCategoryModel.parentCategoryName,
              style: AppTextStyle.width600)),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (int i) {
                  setState(() {
                    activeIndex = i;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemCount: widget.subCategoryModel.images.length,
                itemBuilder: (context, index) {
                  return DetailsItem(
                      aboutCategoryModel: widget.subCategoryModel,
                      // active: activeIndex == index,
                      index: index);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                List.generate(widget.subCategoryModel.images.length, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                height: 10.h,
                width: 10.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.w),
                    shape: BoxShape.circle,
                    color: activeIndex == index
                        ? AppColors.c8DD0DD
                        : Colors.white),
              );
            }),
          ),
          SizedBox(height: 30.h)
        ],
      ),
    );
  }
}
