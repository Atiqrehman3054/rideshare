import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/helping_file.dart';


class HistoryScreenWidgets extends StatelessWidget {
  final String title;
  const HistoryScreenWidgets({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230.h,
          width: 1.sw,
          child: Stack(
            children: [
              Positioned(
                top: 150.h,
                height: 35.h,
                width: 1.sw,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              '16:28',
                              style: TextStyle(color: AppColors.witheColor),
                            ),
                            Text(
                              '16 sep,2022',
                              style: TextStyle(color: AppColors.witheColor),
                            ),
                            Text(
                              '60 RPs',
                              style: TextStyle(color: AppColors.witheColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Container(
                  height: 160.h,
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Images.rideCarImage,
                              height: 15.h,
                              width: 15.w,
                            ),
                            SizedBox(width: 10.w),
                            const Text(
                              'Marathi, Bengaluru, Karnataka',
                            ),
                          ],
                        ),
                        Image.asset(
                          Images.matchingOtherImage,
                          height: 15.h,
                          width: 15.w,
                          color: AppColors.darkGreyColor,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              Images.rideCarImage,
                              height: 15.h,
                              width: 15.w,
                            ),
                            SizedBox(width: 10.w),
                            const Text(
                              'F8 markaz lsb',
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                Images.matchingRideImage,
                                width: 50,
                                height: 50,
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
                                      title,
                                      style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: AppColors.starColor,
                                    ),
                                    SizedBox(width: 5.w),
                                    const Text(
                                      '4.8',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
                        const Align(
                            alignment: Alignment.topRight,
                            child: Text('Suzuki wagonar | White | 12Wrp'))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
