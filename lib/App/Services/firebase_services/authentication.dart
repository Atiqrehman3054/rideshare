// ignore_for_file: unnecessary_brace_in_string_interps, invalid_return_type_for_catch_error

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/Services/firebase_services/storage.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';
import 'package:ride_app/App/Services/firebase_services/firestore.dart';
import 'package:ride_app/App/screens/login/login.dart';
import 'package:ride_app/App/screens/profileScreen/profilescreen.dart';
import 'package:ride_app/App/screens/rideScreen/rideScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../screens/login/login_controller.dart';
import '../../screens/signup/signup_controller.dart';

import 'package:google_sign_in/google_sign_in.dart';

import '../../screens/splash_screen/splash_screen.dart';

class AuthServices {
  static var auth = FirebaseAuth.instance.currentUser;
  Future<String>? imgLink;
  static bool? exist;

  ///****Create Account on firebase******/
  static createStuwithemailandpass(
      String email, String password, var userInfi) async {
    try {
      Get.find<SignupController>().isLoad.value = true;
      // ignore: unused_local_variable
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
        imagee == null
            ? FirestoreMethods.createUserInFireStore(email, userInfi)
            : StorageFirebaseServices.uploadImageonStorage(email, userInfi);
        Get.find<SignupController>().isLoad.value = false;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        CommonWidgets.toastShow('The password provided is too weak.');
        Get.find<SignupController>().isLoad.value = false;
      } else if (e.code == 'email-already-in-use') {
        CommonWidgets.toastShow('The account already exists for that email.');
        Get.find<SignupController>().isLoad.value = false;
      }
    } catch (e) {
      CommonWidgets.toastShow('Some thing gonna wrong');
      Get.find<SignupController>().isLoad.value = true;
      if (kDebugMode) {
        print(e);
      }
    }
  }

  ///****SignIn method for on firebase******/
  static signInWithEmailandPass(String email, String password) async {
    try {
      // ignore: unused_local_variable
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('email', email);
      finalemail = email;
      Get.find<LogInController>().isLoad.value = false;
      CommonWidgets.toastShow('Successfully LogIn');
      Get.off(RideScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.find<LogInController>().isLoad.value = false;
        CommonWidgets.toastShow('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.find<LogInController>().isLoad.value = false;
        CommonWidgets.toastShow('Wrong password provided for that user.');
      }
    } catch (e) {
      Get.find<LogInController>().isLoad.value = false;
      CommonWidgets.toastShow('please enter valid information');
    }
  }

  static signWithPhone(num) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.verifyPhoneNumber(
      phoneNumber: num,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully" + value.toString());
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        // verificationID = verificationId;
        // Get.to(Otp(), arguments: verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static verifyOTP(verificationID, code) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: code);
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signInWithCredential(credential).then((value) {
      print("You are logged in successfully");
      CommonWidgets.toastShow("You are logged in successfully");
    });
  }

/////*******************************sign in with phone */
  static loginWithPhone() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: '+92 3099 710 755',
      verificationCompleted: (PhoneAuthCredential credential) async {
        // ANDROID ONLY!

        // Sign the user in (or link) with the auto-generated credential
        await auth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      codeSent: (String verificationId, int? forceResendingToken) {},
      verificationFailed: (FirebaseAuthException error) {
        print(error);
      },
    );
  }

  //////************************LogOut
  static logOutUser() async {
    await GoogleSignIn().signOut();
    // FacebookAuth.instance.logOut();
    await FirebaseAuth.instance.signOut().whenComplete(() async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.remove('email').whenComplete(() => Get.offAll(login()));
    });
  }

  ////*************RESET PASSWORD */
  static sendPasswordResetEmail(String email) async {
    try {
      // return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) {
        CommonWidgets.toastShow("Password Link has been sent to ${email}");
      }).catchError((e) => CommonWidgets.toastShow(e.toString()));
    } on FirebaseAuthException catch (e) {
      CommonWidgets.toastShow(e.toString());
    } catch (exception) {
      CommonWidgets.toastShow(exception.toString());
    }
  }

  //////************************Google Sign In
  static googleSignin() async {
    Map<String, dynamic> userInfi;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) async {
        userInfi = {
          'name': googleUser.displayName,
          'email': googleUser.email,
          "phone": "",
          "password": ""
          // "cart": [],
          // "profileImage": googleUser.photoUrl,
        };
        if (await AuthServices.checkExist(googleUser.email, "users")) {
          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          sharedPreferences.setString('email', googleUser.email);

          // finalemail = googleUser.email;
          CommonWidgets.toastShow('Logged In');
          Get.offAll(RideScreen());
        } else {
          ////***********************checking user name is valid or not
          FirestoreMethods.createUserInFireStore(googleUser.email, userInfi)
              .whenComplete(() async {
            SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
            sharedPreferences.setString('email', googleUser.email);
            // finalId = FirebaseAuth.instance.currentUser!.uid;
            // finalemail = googleUser.email;
            CommonWidgets.toastShow('Logged In');
            //  finalId = googleUser.id;
            Get.offAll(() => RideScreen());
          });
        }

        // finalId = googleUser.email;
      });
    } catch (e) {
      //CommonWdget.toastShow(e.toString());
      print(e.toString());
    }
  }

  //////************************LogOut
  // static logOutUser() async {
  //   await GoogleSignIn().signOut();
  //   FacebookAuth.instance.logOut();
  //   await FirebaseAuth.instance.signOut().whenComplete(() async {
  //     SharedPreferences sharedPreferences =
  //         await SharedPreferences.getInstance();
  //     sharedPreferences
  //         .remove('id')
  //         .whenComplete(() => Get.offAll(loginView()));
  //   });
  // }

///////************Checking user exist or not*******//////
  // ignore: non_constant_identifier_names
  static Future<bool> checkExist(String docID, String Collection) async {
    bool isExist = false;
    try {
      await FirebaseFirestore.instance
          .collection(Collection)
          .doc(docID)
          .get()
          .then((doc) {
        print(doc.exists);
        isExist = doc.exists;
        if (doc.exists == true) {
          //AuthServices.signInWithEmailandPass(docID, pass);
        } else {
          // CommonWidgets.toastShow("User not Exist");
        }
      });
      return isExist;
    } catch (e) {
      print("user not exist");
      // If any error
      return false;
    }
  }

  //////////*******************Facebook Login***************** */
  // static facebook_login() async {
  //   // final firebaseAuthCred = FacebookAuthProvider.credential(
  //   //     "18343b9cb2e20ab0d409c909810796d9" // FacebookAuth.instance.accessToken.toString()
  //   //     );

  //   // final result =
  //   //     await FirebaseAuth.instance.signInWithCredential(firebaseAuthCred);
  //   Map<String, dynamic> userInfi;
  //   FacebookAuth.instance
  //       .login(permissions: ["public_profile", "email"]).then((value) {
  //     FacebookAuth.instance.getUserData().then((userData) async {
  //       // userObj = userData;
  //       print("******************facebook data****************************");
  //       print(userData);
  //       print(userData['name']);
  //       // print(userData['email']);
  //       print(userData['picture']['data']['url']);

  //       userInfi = {
  //         'name': userData['name'],
  //         // 'email': userData['email'],
  //         'email': "",
  //         'images': [],
  //         'slideShow': [],
  //         "phoneNumber": "",
  //         "gender": "",
  //         "cart": [],
  //         "profileImage": userData['picture']['data']['url'],
  //       };
  //       // if (await AuthServices.checkExist(
  //       //     FirebaseAuth.instance.currentUser!.uid, "users")) {
  //       //   SharedPreferences sharedPreferences =
  //       //       await SharedPreferences.getInstance();
  //       //   sharedPreferences.setString('email', userData['email']);
  //       //   // finalemail = googleUser.email;
  //       //   CommonWdget.toastShow('Successfully LogIn');
  //       //   Get.offAll(() => bottom_bar_view(currentIndex: 0));
  //       // }
  //       // else {

  //       ////***********************checking user name is valid or not
  //       // FirebaseAuth.instance.currentUser!.uid = userData['id'];
  //       FirestoreMethods.createUserInFireStore(
  //               // result.credential.providerId.toString()
  //               // FirebaseAuth.instance.currentUser!.uid
  //               userData['id'],
  //               userInfi)
  //           .whenComplete(() async {
  //         SharedPreferences sharedPreferences =
  //             await SharedPreferences.getInstance();
  //         sharedPreferences.setString('id', userData['id']);
  //         finalId = userData['id'];
  //         // finalemail = googleUser.email;
  //         CommonWdget.toastShow("Logged In");
  //         Get.offAll(() => bottom_bar_view(currentIndex: 0));
  //       });
  //       // }
  //     });
  //   });
  // }

  // Future<Uri> createDynamicLink() async {
  //     final DynamicLinkParameters parameters = DynamicLinkParameters(
  //       uriPrefix: 'https://your.page.link',
  //       link: Uri.parse('https://your.url.com'),
  //       androidParameters: AndroidParameters(
  //         packageName: 'your_android_package_name',
  //         minimumVersion: 1,
  //       ),
  //       iosParameters: IosParameters(
  //         bundleId: 'your_ios_bundle_identifier',
  //         minimumVersion: '1',
  //         appStoreId: 'your_app_store_id',
  //       ),
  //     );
  //     var dynamicUrl = await parameters.buildShortLink();
  //     final Uri shortUrl = shortDynamicLink.shortUrl;
  //     return shortUrl;
  // }

}
