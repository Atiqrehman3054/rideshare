import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:ride_app/App/screens/rideScreen/rideScreen.dart';
import '../../Widgets/common_widgets.dart';
import '../../utils/helping_file.dart';
import '../profileScreen/profilescreen.dart';
import '../roleScreen/roleScreen.dart';
import 'codeScreenWidget.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  TextEditingController phoneController =
      TextEditingController(text: "+923099710755");
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'A code has been send to',
                    style: TextStyle(color: AppColors.witheColor),
                  ),
                  SizedBox(height: 5.h),
                  const Text(
                    '+920000000',
                    style: TextStyle(color: AppColors.witheColor),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Container(
                height: 1.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.witheColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.r),
                      topLeft: Radius.circular(25.r),
                    )),
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: 65.w,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Image.asset(
                        Images.codeImage,
                        height: 170.h,
                        width: 130.w,
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: phoneController,
                          decoration:
                              InputDecoration(labelText: "Phone number"),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Visibility(
                        visible: otpVisibility,
                        child: OTPTextField(
                          spaceBetween: 2.0,
                          length: 6,
                          width: MediaQuery.of(context).size.width,
                          fieldWidth: 40,
                          style: const TextStyle(fontSize: 17),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.box,
                          onCompleted: (pin) {
                            // print("Completed: " + pin);
                            verifyOTP(pin);
                          },
                        ),
                      ),

                      // Visibility(
                      //   visible: otpVisibility,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: const [
                      //       CodeWidget(),
                      //       CodeWidget(),
                      //       CodeWidget(),
                      //       CodeWidget(),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 15.h,
                      ),
                      const Text('Send another code'),
                      SizedBox(
                        height: 20.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.commonColor,
                          onPrimary: AppColors.witheColor,
                          padding: EdgeInsets.symmetric(horizontal: 80.w),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          if (otpVisibility) {
                            verifyOTP("");
                          } else {
                            loginWithPhone();
                          }

                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: (builder) {
                          //   return const RoleScreen();
                          // }));
                        },
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /////////////*************************login with phone */
  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP(pin) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: pin);

    await auth.signInWithCredential(credential).then((value) {
      print("You are logged in successfully");
      CommonWidgets.toastShow("logged in");
      Get.off(RideScreen());
    });
  }
}
