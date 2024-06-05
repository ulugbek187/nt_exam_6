import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nt_exam_6/screen/faq_screen/faq_screen.dart';
import 'package:nt_exam_6/screen/info_screen/info_screen.dart';
import 'package:nt_exam_6/screen/locatsion_screen/locatsion_screen.dart';
import 'package:nt_exam_6/screen/qr_screen/qr_screen.dart';
import 'package:nt_exam_6/utils/colors/app_colors.dart';
import 'package:nt_exam_6/utils/icons/appIcons.dart';
import 'package:nt_exam_6/utils/image/appimage.dart';
import 'package:nt_exam_6/utils/styles/size.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({
    super.key,
  });

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> screens = const [
    InfoScreen(),
    LocatsionScreen(),
    QrScreen(),
    FaqScreen(),
  ];

  int activeIndex = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screens[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: AppColors.white,
        backgroundColor: AppColors.c8DD0DD,
        unselectedItemColor: AppColors.c1A441D,
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        onTap: (newIndex) {
          activeIndex = newIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.info,
              height: 30.h,
              width: 30.w,
              colorFilter: const ColorFilter.mode(
                AppColors.c1A441D,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              AppIcons.info,
              height: 30.h,
              width: 30.w,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: "Info",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.location,
                height: 24.h,
                width: 24.w,
                colorFilter: const ColorFilter.mode(
                  AppColors.c1A441D,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                AppIcons.location,
                height: 24.h,
                width: 24.w,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              label: "Locatsons"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.qr,
                height: 24.h,
                width: 24.w,
                colorFilter: const ColorFilter.mode(
                  AppColors.c1A441D,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                AppIcons.qr,
                height: 24.h,
                width: 24.w,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              label: "QR code"),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.faq,
                height: 24.h,
                width: 24.w,
                // colorFilter: const ColorFilter.mode(
                //   Colors.grey,
                //   BlendMode.srcIn,
                // ),
              ),
              activeIcon: Image.asset(AppImages.faq,
                  height: 24.h, width: 24.w, color: Colors.white),
              label: "FAQ"),
        ],
      ),
    );
  }
}
