import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/screens/RideDetailScreen/rideDetailScreen.dart';

import '../../utils/helping_file.dart';

class MatchingPassengerScreenWidgets extends StatelessWidget {
  const MatchingPassengerScreenWidgets({Key? key}) : super(key: key);

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
                            'Kimmy Natasa',
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
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
                  Flexible(
                    child: Container(
                      child: Text(
                        'Marathalli, Bengaluru, Karnataka, India, Madiwata, Hosur Road, Silk board,…',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
                      Icon(
                        Icons.circle_rounded,
                        color: Color(0xff6BF1F1),
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
                            'Pick Up',
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
                      Icon(
                        Icons.circle_rounded,
                        color: Color(0xffEC6A8F),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '17:28',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            'Drop',
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
                      Icon(
                        Icons.circle_rounded,
                        color: Color(0xff756AED),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '56',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            'Points',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     primary: AppColors.commonColor,
                  //     onPrimary: AppColors.witheColor,
                  //     padding: EdgeInsets.symmetric(horizontal: 50.w),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20),
                  //     ),
                  //   ),
                  //   onPressed: () {
                  //     Get.to(RiderDetailScreen());
                  //   },
                  //   child: const Text('Decline'),
                  // ),
                  OutlinedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                        Colors.red,
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.red),
                      )),
                    ),
                    child: const Text("Decline"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.commonColor,
                      onPrimary: AppColors.witheColor,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Get.to(RiderDetailScreen());
                    },
                    child: const Text('Accept'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
