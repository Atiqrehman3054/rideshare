import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_app/App/screens/HistoryScreen/historyScreenWidget.dart';

import '../../utils/helping_file.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var nameList = [
    'Fahad',
    'Attiq',
    'Assad',
    'Shahzad',
    'Adam',
    'Bilal',
    'Kamran',
  ];
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
                                SizedBox(width: 100.w),
                                Text(
                                  'History',
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
                      height: 1.sh / 2,
                      left: 60.w,
                      child: Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: AppColors.witheColor,
                                      onPrimary: AppColors.blackColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40.w),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text('Past'),
                                  ),
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: AppColors.greyColor,
                                      onPrimary: AppColors.blackColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25.w),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.r),
                                            topRight: Radius.circular(10.r)),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text('Scheduled'),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      top: 1.sh / 3,
                      // height: 1.sh/1,
                      height: 430.h,
                      width: 1.sw,
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, indx) {
                          return HistoryScreenWidgets(title: nameList[indx]);
                        },
                      )),
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
}
