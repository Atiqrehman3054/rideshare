// ignore_for_file: non_constant_identifier_names, empty_catches

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  RxString name = "Name".obs;
  var email = "".obs;
  var image = "".obs;
  var phone = "".obs;
  Map? data;
////fetching data
  fetchdata() {
    CollectionReference collectionReference = FirebaseFirestore.instance
        .collection //(teach == false? 'students': 'users');
        ('users');

    collectionReference
        .doc(FirebaseAuth.instance.currentUser!.email)
        .snapshots()
        .listen((snapshot) {
      data = snapshot.data() as Map?;
      print(data.toString());
      if (data != null) {
        // CommonWdget.confirmBox("titlle", data.toString(), () { });
        name.value = data!['name'];
        email.value = data!['email'];
        image.value = data!['image'];
        phone.value = data!['phone'];
      } else {
        name.value = "";
        email.value = "";
        image.value = "";
        phone.value = "";
      }
    });
  }

//*****************************Fetch Challenge */
  fetchchallengedata() {
    CollectionReference collectionReference = FirebaseFirestore.instance
        .collection //(teach == false? 'students': 'users');
        ('challenges');

    collectionReference
        .doc(FirebaseAuth.instance.currentUser!.email)
        .snapshots()
        .listen((snapshot) {
      data = snapshot.data() as Map?;
      print(data.toString());
      if (data != null) {
        // CommonWdget.confirmBox("titlle", data.toString(), () { });
        name.value = data!['name'];
        email.value = data!['email'];
        image.value = data!['image'];
        phone.value = data!['phone'];
        //followers.value=data!['followers'];
        // following.value=data!['followings'];
      } else {
        name.value = "";
        email.value = "";
        image.value = "";
        phone.value = "";
      }
    });
  }

  @override
  void onClose() {}

  @override
  void onInit() async {
    await fetchdata();
    super.onInit();
  }
}
