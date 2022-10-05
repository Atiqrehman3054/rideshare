// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ride_app/App/screens/login/login.dart';
import 'package:ride_app/App/screens/map_screens/map1.dart';
import 'package:ride_app/App/screens/rideScreen/rideScreen.dart';
import 'package:ride_app/App/screens/wellcome_screens/welcome1.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Common_Methods/common_methods.dart';
import '../error_pages/connection_lose.dart';

///checking state
String? finalemail;

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({key}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  Future getValidationData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var obtainEmail = sharedPreferences.getString('email');

    finalemail = obtainEmail;

    // print(finalemail.toString());
  }

  @override
  void initState() {
    getValidationData().whenComplete(() async {
      if (await CommonMethodst.checkConnection()) {
        Timer(const Duration(seconds: 2), () {
          finalemail == null ? Get.offAll(welcome1()) : Get.off(RideScreen());
          //Get.off(Wellcome());
        });
      } else {
        Get.off(ConnectionLostScreen());
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 101, 0, 119),

      //Color(0xff4EBDC3),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("assets/images/Group 1082.png"),
              ),
              const SizedBox(height: 30),
              const Center(
                  child: Text(
                "Ride Share",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
