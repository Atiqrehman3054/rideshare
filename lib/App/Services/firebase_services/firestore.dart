import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../Widgets/common_widgets.dart';

class FirestoreMethods {
  ////************** Create User ************************///////
  static createUserInFireStore(String email, var userData) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(email)
        .set(userData)
        .whenComplete(
            () => CommonWidgets.toastShow('Successfully Acount created'));
  }

  ///****Update userPic on firebasae******/
  static void updatePhoto(String name, String url, String docId) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(docId)
        .update({'name': name, 'image': url}).whenComplete(
            () => CommonWidgets.toastShow("User updated Successfully"));
  }

  /////update user name
  static void updateUserName(String name, String docId) async {
    await FirebaseFirestore.instance.collection('users').doc(docId).update({
      'name': name,
    }).whenComplete(() {
      CommonWidgets.toastShow("User updated Successfully");
    });
  }
}
