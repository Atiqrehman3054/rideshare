import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/screens/RideDetailScreen/rideDetailScreen.dart';

import '../../utils/helping_file.dart';

class MatchingScreenWidgets extends StatelessWidget {
  const MatchingScreenWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.sp),
      child: Container(
        height: 266.h,
        width: 1.sw,
        decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(20.r)),
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      Images.matchingRideImage,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Bernard Alvarado',
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5.w),
                          Image.asset(
                            Images.rideCarImage,
                            height: 20.h,
                            width: 20.w,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Images.rideCarImage,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 5.w),
                          const Text('Suzuki wagonar | White |12Wzrp'),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Images.rideCarImage,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 5.w),
                          const Text(
                            '4.8',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('(200)'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Image.asset(
                    Images.rideCarImage,
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    'Marathi, Bengaluru, Karnataka',
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Image.asset(
                    Images.rideCarImage,
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    'F8 markaz lsb',
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Images.rideCarImage,
                        height: 15.h,
                        width: 15.w,
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '16:28',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            'Time',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Images.rideCarImage,
                        height: 15.h,
                        width: 15.w,
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '60 RPs',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            'Per seat',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Images.rideCarImage,
                        height: 15.h,
                        width: 15.w,
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '3',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            'Available\nseat',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.rideCarImage,
                            height: 15.h,
                            width: 15.w,
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            'Time',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.commonColor,
                  onPrimary: AppColors.witheColor,
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Get.to(RiderDetailScreen());
                },
                child: const Text('Request'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
