// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ride_app/App/Services/firebase_services/firestore.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';
import 'package:ride_app/App/screens/profileScreen/profilescreen.dart';

class StorageFirebaseServices {
  ///****upload account pic on firebase Storage******/
  static Future<String> uploadImageonStorage(email, userInfi) async {
    var imagestatus = await FirebaseStorage.instance
        .ref()
        .child('images')
        .child(email + ".jpg")
        .putFile(imagee!) //await StorageFirebaseServices.getImage())
        .then((value) => value);
    String imageUrl = await imagestatus.ref.getDownloadURL();
    userInfi['image'] = imageUrl.toString();
    await FirestoreMethods.createUserInFireStore(email, userInfi);
    return imageUrl;
  }
}
