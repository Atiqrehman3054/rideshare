import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:ride_app/App/utils/helping_file.dart';

import '../Services/firebase_services/authentication.dart';
import '../utils/colors.dart';

class CommonWidgets {
  static boldTextt(txt, font_size, clr) {
    return Text(txt.toString(),
        style: TextStyle(
            fontSize: font_size, color: clr, fontWeight: FontWeight.bold));
  }

  ////////////////////*************DialogBox */
  static confirmBox(String titlle, String texte, VoidCallback click) {
    return Get.defaultDialog(
        title: titlle,
        middleText: texte, //"Are you sure you want to delete this user?",
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      AppColors.commonColor,
                    )),
                    child: const Text(
                      'Cancel',
                      // ignore: unnecessary_const
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      click();
                      Get.back();
                      // AuthServices.deleteAccount(email);
                      //Get.back();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.red,
                    )),
                    child: Text(
                      titlle,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          )
        ]);
  }

  ///Tost
  static void toastShow(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[800],
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static appbarr(var title) {
    return AppBar(
      // actions: [const Padding(
      //   padding:  const EdgeInsets.all(8.0),
      //   child: Icon(Icons.add,color: Colors.white,),
      // )],
      elevation: 0,
      backgroundColor: AppColors.commonColor,
      // elevation: 0,
      title: Text(
        title.toString(),
        style: const TextStyle(color: Colors.white),
      ),
      actions: [
        InkWell(
            onTap: () {
              CommonWidgets.confirmBox(
                  "Log Out", "Are u sure you want to Log out ?", () {
                AuthServices.logOutUser();
                // Get.find<HomeController>().logout();
              });
            },
            child: const Icon(Icons.logout))
      ],
      // centerTitle: true,
    );
  }
}
