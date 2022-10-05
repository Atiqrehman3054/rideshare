import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Services/firebase_services/authentication.dart';

class SignupController extends GetxController {
  // final formkey1 = GlobalKey<FormState>();
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  // final TextEditingController confirmPassController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  var isObsecure = true.obs;
  var isLoad = false.obs;
  togglePass() {
    isObsecure.value = !isObsecure.value;
  }

  @override
  void onClose() {}

  void signup() {
    var userInfi = {
      'name': usernamecontroller.text,
      'email': emailcontroller.text,
      'password': passcontroller.text,
      'phone': phoneController.text,
      'image': "",
      // 'photoUrl': '$imageUrl' == null
      //     ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA65C8-sNxxoiwjic3K8ZOs-2oG6PC-wu1dw&usqp=CAU'
      //     : '$imageUrl',
      //'searchIndex': indexList,
      //'status': 'offline'
    };

    AuthServices.createStuwithemailandpass(
        emailcontroller.text, passcontroller.text, userInfi);
    emailcontroller.clear();
    usernamecontroller.clear();
    passcontroller.clear();
    // confirmPassController.clear();
    phoneController.clear();
  }
}
