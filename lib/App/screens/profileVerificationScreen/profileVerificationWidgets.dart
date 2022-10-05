import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/helping_file.dart';

class ProfileVerificationWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  final onPressed;
  const ProfileVerificationWidgets(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Container(
              height: 90,
              width: 90,
              color: AppColors.witheColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 30.sp,
                      color: AppColors.commonColor,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      title,
                      style: const TextStyle(color: AppColors.blackColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
