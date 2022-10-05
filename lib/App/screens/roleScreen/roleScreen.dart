import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/helping_file.dart';
import '../profileScreen/profilescreen.dart';

class RoleScreen extends StatelessWidget {
  const RoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pick your role',
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: AppColors.witheColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.witheColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.r),
                    topLeft: Radius.circular(25.r),
                  )),
              child: Padding(
                padding: EdgeInsets.all(15.sp),
                child: Column(
                  children: [
                    Container(
                      height: 5.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          Images.roleBackGroundImage,
                          height: 110.h,
                          width: 110.w,
                        ),
                        Positioned(
                            top: 18.h,
                            child: Image.asset(
                              Images.roleDriverImage,
                              height: 110.h,
                              width: 110.w,
                            ))
                      ],
                    ),
                    SizedBox(height: 10.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.witheColor,
                        onPrimary: AppColors.blackColor,
                        side: const BorderSide(
                            color: AppColors.commonColor, width: 2),
                        padding: EdgeInsets.symmetric(
                            horizontal: 100.w, vertical: 20.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('I am a driver'),
                    ),
                    SizedBox(height: 20.h),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 5.h,
                          child: Image.asset(
                            Images.roleBackGroundImage,
                            height: 110.h,
                            width: 110.w,
                          ),
                        ),
                        Image.asset(
                          Images.rolePassengerImage,
                          height: 130.h,
                          width: 110.w,
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.witheColor,
                        onPrimary: AppColors.blackColor,
                        side: const BorderSide(
                            color: AppColors.commonColor, width: 2),
                        padding: EdgeInsets.symmetric(
                            horizontal: 100.w, vertical: 20.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder) {
                          return const ProfileScreen();
                        }));
                      },
                      child: const Text('I am a passenger'),
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
