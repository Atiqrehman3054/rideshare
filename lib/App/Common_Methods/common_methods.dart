import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';

class CommonMethodst {
  //static Future <File>? imagee;
  static bool isImg = false;

  ///Tost
  static Future<bool> checkConnection() async {
    bool a = false;
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      CommonWidgets.toastShow("make sure your internet is connected");
      a = false;
      return false;
    } else if (result == ConnectivityResult.mobile) {
      //toastShow("You are using mobile data");
      a = true;
      return true;
    } else if (result == ConnectivityResult.wifi) {
      //toastShow("You are using Wifi");
      a = true;
      return true;
    }
    return a;
  }

  ///****Pick image freom mob Gallery******/
  static Future<File> getImage() async {
    final picker = ImagePicker();
    File _image;
    // ignore: deprecated_member_use
    final image = await picker.getImage(source: ImageSource.gallery);
    //CommonMethodst.imagee=image as Future<File>?;
    _image = File(image!.path);
    return _image;
  }

  ///****Pick image freom mob camera******/
  static Future<File> getCameraImage() async {
    final picker = ImagePicker();
    File _image;
    // ignore: deprecated_member_use
    final image = await picker.getImage(source: ImageSource.camera);
    //StorageFirebaseServices.uploadPstImage(image);
    _image = File(image!.path);
    print(await _image.exists());

    return _image;
  }
}
