import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/screens/DialogBox/dialogboxScreen.dart';
import 'package:ride_app/App/screens/home/homeController.dart';

import '../../utils/helping_file.dart';
import '../drawer/drawer.dart';
import '../matchingRideScreen/matchingRideScreen.dart';

class RideScreen extends StatefulWidget {
  const RideScreen({Key? key}) : super(key: key);

  @override
  State<RideScreen> createState() => _RideScreenState();
}

class _RideScreenState extends State<RideScreen> {
  final HomeController _controller = Get.put(HomeController());
  var scafKey = GlobalKey<ScaffoldState>();
  var startingController = TextEditingController();
  var destinationController = TextEditingController();
  var timeController = TextEditingController();
  var intructionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          key: scafKey,
          drawer: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Drawer(
                  backgroundColor: Colors.white,
                  child: Drawerr.drawerr(context))),
          body: Stack(
            children: [
              Image.asset(
                Images.rideBackGroundImage,
                height: 1.sh,
                width: 1.sw,
                fit: BoxFit.cover,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => scafKey.currentState!.openDrawer(),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: AppColors.witheColor,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: Image.asset(
                                Images.rideMenuImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: AppColors.witheColor,
                                    borderRadius: BorderRadius.circular(50.r)),
                                child: Image.asset(
                                  Images.rideChatImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: AppColors.witheColor,
                                    borderRadius: BorderRadius.circular(50.r)),
                                child: Image.asset(
                                  Images.rideBellImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 200.h,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColors.witheColor,
                              borderRadius: BorderRadius.circular(50.r)),
                          child: Image.asset(
                            Images.rideTargetImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          // height: 385.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                              color: AppColors.greyColor,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Padding(
                            padding: EdgeInsets.all(10.sp),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 55.h,
                                        width: 60.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.witheColor,
                                            borderRadius:
                                                BorderRadius.circular(50.r)),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.w, right: 5.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                Images.rideMiniCarImage,
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                'Mini',
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 55.h,
                                        width: 60.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.witheColor,
                                            borderRadius:
                                                BorderRadius.circular(50.r)),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.w, right: 5.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                Images.rideAcCarImage,
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                'AC',
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 55.h,
                                        width: 60.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.witheColor,
                                            borderRadius:
                                                BorderRadius.circular(50.r)),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.w, right: 5.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                Images.rideEconomyCarImage,
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                'Economy',
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                          primary: AppColors.RideButtonColor,
                                          onPrimary: AppColors.blackColor,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.w),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.search,
                                          color: AppColors.commonColor,
                                        ),
                                        label: const Text(
                                          'Find Car',
                                          style: TextStyle(
                                              color: AppColors.commonColor),
                                        ),
                                        onPressed: () {
                                          showCustomDialog(context);
                                        },
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            Images.rideCarImage,
                                            height: 50.h,
                                            width: 50.w,
                                          ),
                                          const Text('offer Ride')
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  TextField(
                                    controller: startingController,
                                    decoration: InputDecoration(
                                      icon: Image.asset(
                                        Images.pickpoint,
                                        scale: 2,
                                      ),
                                      hintText: 'Choose your starting point',
                                    ),
                                  ),
                                  TextField(
                                    controller: destinationController,
                                    decoration: InputDecoration(
                                      icon: Image.asset(
                                        Images.drpopoint,
                                        scale: 2,
                                      ),
                                      hintText: 'Choose destination',
                                    ),
                                  ),
                                  TextField(
                                    controller: timeController,
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.access_time),
                                      hintText: 'Pick a time',
                                    ),
                                  ),
                                  TextField(
                                    controller: intructionController,
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.edit),
                                      hintText:
                                          'Special instruction (ex. pet, luggages)',
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: AppColors.commonColor,
                                      onPrimary: AppColors.witheColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 100.w),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (builder) {
                                        return const MatchingRideScreen();
                                      }));
                                    },
                                    child: const Text('offer'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 4.h,
                          width: 100,
                          decoration: BoxDecoration(
                              color: AppColors.commonColor,
                              borderRadius: BorderRadius.circular(10.r)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
