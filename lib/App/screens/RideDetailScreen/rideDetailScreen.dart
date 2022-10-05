import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/helping_file.dart';

class RiderDetailScreen extends StatefulWidget {
  const RiderDetailScreen({Key? key}) : super(key: key);

  @override
  State<RiderDetailScreen> createState() => _RiderDetailScreenState();
}

class _RiderDetailScreenState extends State<RiderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1.sh,
              width: 1.sw,
              child: Stack(
                children: [
                  Positioned(
                    height: 1.sh / 4,
                    width: 1.sw,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100.r))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 50.h, left: 20.w),
                        child: Column(
                          children: [
                            Row(
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
                                SizedBox(width: 60.w),
                                Text(
                                  'Rider details',
                                  style: TextStyle(
                                      color: AppColors.witheColor,
                                      fontSize: 20.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 100.h,
                      height: 420.h,
                      width: 1.sw,
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.witheColor,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Padding(
                            padding: EdgeInsets.all(10.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              color: AppColors.darkGreyColor,
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              'Suzuki wagonar | White |12Wzrp',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.star,
                                                color: AppColors.yellowColor),
                                            SizedBox(width: 5.w),
                                            const Text(
                                              '4.8',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Text(
                                              '(200)',
                                              style: TextStyle(
                                                  color:
                                                      AppColors.darkGreyColor),
                                            ),
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
                                      height: 15.h,
                                      width: 15.w,
                                    ),
                                    SizedBox(width: 10.w),
                                    const Text(
                                      'Marathi, Bengaluru, Karnataka',
                                      style: TextStyle(
                                          color: AppColors.darkGreyColor),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  Images.matchingOtherImage,
                                  color: AppColors.darkGreyColor,
                                  height: 15.h,
                                  width: 15.w,
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
                                      style: TextStyle(
                                          color: AppColors.darkGreyColor),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '16:28',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5.h),
                                        const Text(
                                          'Time',
                                          style: TextStyle(
                                              color: AppColors.darkGreyColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '16 sep,2022',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5.h),
                                        const Text(
                                          'Date',
                                          style: TextStyle(
                                              color: AppColors.darkGreyColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          Images.rideCarImage,
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                        SizedBox(width: 5.w),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              '60 RPs',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5.h),
                                            const Text(
                                              'Time',
                                              style: TextStyle(
                                                  color:
                                                      AppColors.darkGreyColor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          Images.rideCarImage,
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                        SizedBox(width: 5.w),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              '3',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 5.h),
                                            const Text(
                                              'Available\nseat',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color:
                                                      AppColors.darkGreyColor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          Images.rideCarImage,
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                        SizedBox(height: 5.h),
                                        const Text(
                                          'AC',
                                          style: TextStyle(
                                              color: AppColors.darkGreyColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    const Text(
                                      'Select seats',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(width: 30.w),
                                    Row(
                                      children: [
                                        Image.asset(
                                          Images.plusImage,
                                          height: 15.h,
                                          width: 15.w,
                                          color: AppColors.commonColor,
                                        ),
                                        SizedBox(width: 10.w),
                                        const Text(
                                          '2',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10.w),
                                        Image.asset(
                                          Images.minusImage,
                                          height: 15.h,
                                          width: 15.w,
                                          color: AppColors.commonColor,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.commonColor,
                                        onPrimary: AppColors.witheColor,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40.w),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        _showCustomDialog(context);
                                      },
                                      child: const Text('Request'),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.commonColor,
                                        onPrimary: AppColors.witheColor,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.w),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        _showCustomDialog(context);
                                      },
                                      child: const Text('Send message'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 30.h),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 150.h,
                        width: 1.sw,
                        child: Image.asset(
                          Images.mapImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 15.h, left: 100.w, right: 100.w, top: 15.h),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 4.h,
                        width: 100,
                        decoration: BoxDecoration(
                            color: AppColors.commonColor,
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showCustomDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r)),
              elevation: 0,
              child: Container(
                height: 350.h,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Row(
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
                              Text(
                                'Bernard',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.h),
                              const Text(
                                'Active now',
                                style: TextStyle(
                                  color: AppColors.darkGreyColor,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(Icons.close))
                        ],
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      flex: 9,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 30.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: AppColors.commonColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.r),
                                    topLeft: Radius.circular(15.r),
                                    topRight: Radius.circular(15.r),
                                  )),
                              child: Padding(
                                padding: EdgeInsets.all(5.sp),
                                child: const Text(
                                  'Hi',
                                  style: TextStyle(color: AppColors.witheColor),
                                ),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15.r),
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(5.sp),
                              child: const Text(
                                'Hello',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Message',
                          suffixIcon: const Icon(Icons.telegram,
                              color: AppColors.darkGreyColor),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.r),
                            bottomLeft: Radius.circular(15.r),
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.r),
                            bottomLeft: Radius.circular(15.r),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
