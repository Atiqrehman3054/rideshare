import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/helping_file.dart';

showCustomDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          elevation: 0,
          child: Container(
            // color: Colors.green,
            height: 345.h,
            child: Stack(
              // alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 300.h,
                  decoration: BoxDecoration(
                    color: AppColors.witheColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  margin: EdgeInsets.only(top: 30.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Text('Bernard Alvarado',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.h),
                      Text(
                          'Marathalli, Bengalur,Karnataka, india,\n'
                          'Madiwata,Hosur Road, Silk board,...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                          )),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  Images.rideCarImage,
                                  height: 10.h,
                                  width: 10.w,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Parateek Wisteria Sector 77,Nioda,',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Image.asset(
                              Images.matchingOtherImage,
                              height: 10.h,
                              width: 10.w,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      Images.rideCarImage,
                                      height: 10.h,
                                      width: 10.w,
                                    ),
                                    SizedBox(width: 10.w),
                                    SizedBox(
                                      width: 220.h,
                                      child: Text(
                                        'HCL Technologies Sector 126, Raipu Kal...',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Expanded(
                        child: Container(
                          height: 100.h,
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15.r),
                                  bottomLeft: Radius.circular(15.r))),
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Text(
                                  'Rate your rider',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RatingBar.builder(
                                      // initialRating: 3,
                                      // minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 2.w),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.commonColor,
                      onPrimary: AppColors.witheColor,
                      padding: EdgeInsets.symmetric(horizontal: 80.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Submit'),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      Images.matchingRideImage,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
