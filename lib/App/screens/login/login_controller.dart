import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Services/firebase_services/authentication.dart';

class LogInController extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  var isObsecure = true.obs;
  var isLoad = false.obs;

  togglePass() {
    isObsecure.value = !isObsecure.value;
  }

  @override
  void onClose() {}

  void signin() async {
    await AuthServices.signInWithEmailandPass(
        emailcontroller.text, passcontroller.text);
    emailcontroller.clear();
    passcontroller.clear();
  }
}
