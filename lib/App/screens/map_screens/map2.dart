import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../utils/helping_file.dart';

class map2 extends StatefulWidget {
  const map2({super.key});

  @override
  State<map2> createState() => _map2State();
}

class _map2State extends State<map2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios)),
          title: Text(DateFormat('dd-MM-yyy  KK:mm a').format(DateTime.now())),
          backgroundColor: Color(0xff756AED),
          toolbarHeight: 123,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Container(
                      width: Get.width,
                      height: Get.height,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(
                            Images.rideBackGroundImage,
                            // height: 1.sh,
                            // width: 1.sw,
                            // fit: BoxFit.cover,
                          ), //ExactAssetImage('assets/example.png'),
                          fit: BoxFit.cover,
                        ),
                        // color: kPrimaryColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 175,
                    left: Get.width / 18,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                            child: Container(
                          width: Get.width / 1.2,
                          height: 40,
                          child: Row(
                            children: [
                              Icon(Icons.car_rental_sharp),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "  Finding a ride ....",
                                style: TextStyle(
                                    color: Color(0xff9991F6), fontSize: 15),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 112,
                    left: Get.width / 9.5,
                    child: Center(
                      child: ElevatedButton(
                        child: Text(
                          'cancel',
                          style: TextStyle(fontSize: 16),
                        ),
                        onPressed: () {
                          // Get.to(login());
                        },
                        style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            primary: Color(0xff756AED),
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 2.8,
                              vertical: MediaQuery.of(context).size.height / 90,
                            ),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      left: Get.width / 17,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: 15.h, left: 100.w, right: 100.w, top: 8.h),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 4.h,
                            width: 150,
                            decoration: BoxDecoration(
                                color: AppColors.commonColor,
                                borderRadius: BorderRadius.circular(10.r)),
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
