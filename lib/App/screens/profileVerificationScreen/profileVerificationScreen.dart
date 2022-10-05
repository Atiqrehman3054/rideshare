import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/screens/home/homeController.dart';
import 'package:ride_app/App/screens/profileVerificationScreen/profileVerificationWidgets.dart';

import '../../utils/helping_file.dart';

class ProfileVerificationScreen extends StatefulWidget {
  const ProfileVerificationScreen({Key? key}) : super(key: key);

  @override
  State<ProfileVerificationScreen> createState() =>
      _ProfileVerificationScreenState();
}

class _ProfileVerificationScreenState extends State<ProfileVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250.h,
              width: 1.sw,
              child: Stack(
                children: [
                  Positioned(
                      height: 1.sh / 4,
                      width: 1.sw,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.commonColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(100.r))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: AppColors.witheColor,
                                ),
                              ),
                              SizedBox(width: 100.w),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    color: AppColors.witheColor,
                                    fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                      top: 130.h,
                      left: 130.w,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                              height: 75.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                  // border: Border.all(
                                  //     color: AppColors.witheColor, width: 5.w),
                                  borderRadius: BorderRadius.circular(50.r),
                                  image:
                                      Get.find<HomeController>().image.value ==
                                              ""
                                          ? DecorationImage(
                                              image: AssetImage(
                                                Images.matchingRideImage,
                                              ),
                                              fit: BoxFit.cover,
                                            )
                                          : DecorationImage(
                                              image: NetworkImage(
                                                Get.find<HomeController>()
                                                    .image
                                                    .value,
                                              ),
                                              fit: BoxFit.cover,
                                            ))
                              // child: Image.asset(

                              // ),
                              ),
                          Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: AppColors.lightPurpleColor),
                            child: Image.asset(
                              Images.profileVerificationNoteImage,
                              color: AppColors.commonColor,
                              height: 10.h,
                              width: 10.w,
                            ),
                          ),

                          // Positioned(
                          //   top: 55.h,
                          //   left: 50.w,
                          //   child: Container(
                          //     height: 15.h,
                          //     width: 15.w,
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(5.r),
                          //         color: AppColors.lightPurpleColor),
                          //     child: Image.asset(
                          //       Images.profileVerificationNoteImage,
                          //       color: AppColors.commonColor,
                          //       height: 10.h,
                          //       width: 10.w,
                          //     ),
                          //   ),
                          // ),
                        ],
                      )),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Get.find<HomeController>().name.toString(),
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.lightPurpleColor),
                      child: Image.asset(
                        Images.profileVerificationNoteImage,
                        color: AppColors.commonColor,
                        height: 20.h,
                        width: 20.w,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'Verified Profile',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.commonColor,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '1,260',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'total ride',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.darkGreyColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '846',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'as passenger',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.darkGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: AppColors.starColor,
                ),
                SizedBox(width: 5.w),
                Text(
                  '4.8',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileVerificationWidgets(
                    icon: Icons.help,
                    title: 'Help',
                    onPressed: () {
                      print("help");
                    }),
                ProfileVerificationWidgets(
                    icon: Icons.wallet,
                    title: 'Wallet',
                    onPressed: () {
                      print("Wallet");
                    }),
                ProfileVerificationWidgets(
                    icon: Icons.access_time,
                    title: 'Trips',
                    onPressed: () {
                      print("Trips");
                    })
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: AppColors.lightPurpleColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.email,
                            color: AppColors.commonColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Messages',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: AppColors.lightPurpleColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.settings,
                            color: AppColors.commonColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Setting',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: AppColors.lightPurpleColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.info,
                            color: AppColors.commonColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Legal',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
              child: Container(
                height: 4.h,
                width: 100,
                decoration: BoxDecoration(
                    color: AppColors.commonColor,
                    borderRadius: BorderRadius.circular(10.r)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
