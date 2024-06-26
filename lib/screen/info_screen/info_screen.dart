import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nt_exam_6/data/repositories/category_repository.dart';
import 'package:nt_exam_6/screen/detail_screen/detail_screen.dart';
import 'package:nt_exam_6/screen/global_widgets/global_widgets.dart';
import 'package:nt_exam_6/screen/info_screen/widgets/category_item.dart';
import 'package:nt_exam_6/utils/colors/app_colors.dart';
import 'package:nt_exam_6/utils/icons/appIcons.dart';
import 'package:nt_exam_6/utils/styles/app_text_style.dart';
import 'package:nt_exam_6/utils/styles/size.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.cC6E5BA,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const GlobalAppBarContainer(
            title: "ITEM SEARCH",
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "Search By Item:",
              style: AppTextStyle.width400.copyWith(fontSize: 24.w),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              SizedBox(width: 20.w),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    fillColor: AppColors.white,
                    filled: true,
                    hintText: "EX) MILK BOTTLE",
                    hintStyle: AppTextStyle.width500
                        .copyWith(color: Colors.grey, fontSize: 25.w),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.c70B458),
                      borderRadius: BorderRadius.circular(40.w),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                height: 46.h,
                width: 46.h,
                decoration: const BoxDecoration(
                    color: AppColors.c70B458, shape: BoxShape.circle),
                child: Center(
                  child: SizedBox(
                      width: 28.w,
                      height: 27.h,
                      child: SvgPicture.asset(AppIcons.search)),
                ),
              ),
              SizedBox(width: 20.w),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "Search By Category:",
              style: AppTextStyle.width400.copyWith(fontSize: 24.w),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: height / 2.2,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
                mainAxisSpacing: 5.h,
                crossAxisSpacing: 10.w,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryItemContainer(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          subCategoryModel: categories[index].subCategoryModel,
                        ),
                      ),
                    );
                  },

                  title: categories[index].title,
                  image: categories[index].image,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
