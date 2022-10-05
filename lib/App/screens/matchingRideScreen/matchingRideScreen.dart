import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_app/App/screens/matchingRideScreen/matchingScreenWidgets.dart';

import '../../utils/helping_file.dart';

class MatchingRideScreen extends StatefulWidget {
  const MatchingRideScreen({Key? key}) : super(key: key);

  @override
  State<MatchingRideScreen> createState() => _MatchingRideScreenState();
}

class _MatchingRideScreenState extends State<MatchingRideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 1.sh,
            width: 1.sw,
            child: Stack(
              children: [
                Positioned(
                  height: 1.sh/4,
                  width: 1.sw,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(100.r))
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 50.h,left: 20.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(Icons.arrow_back_ios,
                                  color: AppColors.witheColor,
                                ),
                              ),
                              SizedBox(width: 60.w),
                              Text('Matching Rides',
                                style: TextStyle(
                                    color: AppColors.witheColor,
                                    fontSize: 20.sp
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  height: 570.h,
                  width: 1.sw,
                  child: ListView(
                    children: const [
                      MatchingScreenWidgets(),
                      MatchingScreenWidgets(),
                      MatchingScreenWidgets(),
                      MatchingScreenWidgets(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.h,left: 100.w,right: 100.w,top: 15.h),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 4.h,
                      width: 100,
                      decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
