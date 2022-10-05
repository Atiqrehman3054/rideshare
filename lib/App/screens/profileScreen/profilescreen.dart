import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/Common_Methods/common_methods.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';

import '../../Services/firebase_services/storage.dart';
import '../../utils/helping_file.dart';
import '../signup/signup.dart';

File? imagee;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 300.h,
          width: 1.sw,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  height: 1.sh / 4,
                  width: 1.sw,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.commonColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Upload your profile picture',
                          style: TextStyle(
                              color: AppColors.witheColor, fontSize: 20.sp),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: 90.h,
                left: 80.w,
                height: 200.h,
                width: 200.w,
                child: imagee == null
                    ? Image.asset(Images.profileImage)
                    : Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ClipOval(
                          child: Image.file(
                            imagee!,
                            // width: 90,
                            // height: 90,
                            height: 200.h,
                            width: 200.w,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.witheColor,
                  onPrimary: AppColors.blackColor,
                  side:
                      const BorderSide(color: AppColors.commonColor, width: 2),
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.w, vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                icon: Image.asset(
                  Images.profileCameraImage,
                  height: 20.h,
                ),
                label: const Text(
                  'Use camera',
                ),
                onPressed: () async {
                  imagee = await CommonMethodst.getCameraImage();
                  setState(() {
                    imagee = imagee;
                  });
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.witheColor,
                  onPrimary: AppColors.blackColor,
                  side:
                      const BorderSide(color: AppColors.commonColor, width: 2),
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.w, vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                icon: Image.asset(
                  Images.profileGalleryImage,
                  height: 20.h,
                ),
                label: const Text(
                  'Select from gallery',
                ),
                onPressed: () async {
                  imagee = await CommonMethodst.getImage();
                  setState(() {
                    imagee = imagee;
                  });
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black26,
                      //       offset: Offset(0, 4),
                      //       blurRadius: 5.0)
                      // ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Color(0xff9991F6),
                          Color(0xff756AED),
                        ],
                      ),
                      // color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      child: Text('Next'),
                      onPressed: () {
                        if (imagee != null) {
                          Get.to(SinUpScreen());
                          // StorageFirebaseServices.uploadImage(
                          //     imagee, "aqib@gmail.com");
                        } else {
                          CommonWidgets.toastShow("Please select image first");
                        }
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(
                            Size(Get.width / 1.5, 50)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        // elevation: MaterialStateProperty.all(3),
                        // shadowColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    imagee = null;
                  });
                  Get.to(SinUpScreen());
                },
                child: const Text(
                  'Skip for now',
                  style: TextStyle(color: AppColors.commonColor),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
