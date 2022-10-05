import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ride_app/App/screens/login/login.dart';

import '../../Common_Methods/common_widgets.dart';
import 'signup_controller.dart';

class SinUpScreen extends StatefulWidget {
  const SinUpScreen({super.key});

  @override
  State<SinUpScreen> createState() => _loginState();
}

class _loginState extends State<SinUpScreen> {
  Map<String, dynamic>? userInfi;
  final formkey1 = GlobalKey<FormState>();
  final SignupController _signupcontroller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff756AED),
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                // const Upside(
                //   imgUrl: "assets/images/SinUpScreen.png",
                // ),
                //const PageTitleBar(title: 'Login to your account'),
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Container(
                    // height: 600,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: const SizedBox(
                            width: 92.0,
                            height: 6.0,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Color(0xffEEEEEE)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 21,
                        ),
                        Form(
                          key: formkey1,
                          child: Column(
                            children: [
                              Custom_textfeild(
                                validation: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'must enter name';
                                  } else {
                                    _signupcontroller.usernamecontroller.text =
                                        value;
                                  }
                                },
                                controller:
                                    _signupcontroller.usernamecontroller,
                                name: "Name",
                                icon: Icons.person,
                              ),
                              Custom_textfeild(
                                validation: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'must enter email address';
                                  }
                                  return null;
                                },
                                controller: _signupcontroller.emailcontroller,
                                name: "email",
                                icon: Icons.email,
                              ),
                              Custom_textfeild(
                                validation: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'must enter password';
                                  }
                                  return null;
                                },
                                obscureText: _signupcontroller.isObsecure.value,
                                controller: _signupcontroller.passcontroller,
                                name: "Password",
                                icon: Icons.password,
                              ),
                              Custom_textfeild(
                                validation: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value !=
                                          _signupcontroller
                                              .passcontroller.text) {
                                    return 'some thing gonna wrong';
                                  }
                                  return null;
                                },
                                controller: null,
                                name: "Confirm Password",
                                icon: Icons.password,
                              ),
                              Custom_textfeild(
                                validation: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'must enter contact number';
                                  }
                                  return null;
                                },
                                controller: _signupcontroller.phoneController,
                                name: "Contact",
                                icon: Icons.phone,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Custom_button(
                          onpressed: () {
                            if (formkey1.currentState!.validate()) {
                              ////closing keypad

                              Get.find<SignupController>().signup();
                              FocusManager.instance.primaryFocus!.unfocus();
                            }
                          },
                          name: "Sign Up",
                        ),
                        SizedBox(
                          height: Get.height / 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an Account?",
                              style: TextStyle(color: Color(0xffC9D5DA)),
                            ),
                            InkWell(
                              onTap: () {
                                Get.off(login());
                              },
                              child: Text("Log in",
                                  style: TextStyle(color: Color(0xffF18C8E))),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 7,
                    top: Get.height / 14.55,
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white,
                              ),
                              height: 50,
                              width: 260,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  ElevatedButton(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    onPressed: () {
                                      Get.back();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0),
                                        ),
                                        primary: Color(0xff756AED),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              12.8,
                                          vertical: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              90,
                                        ),
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  ElevatedButton(
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    onPressed: () {
                                      // Get.to(SinUpScreen());
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0),
                                        ),
                                        primary: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              12.8,
                                          vertical: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              90,
                                        ),
                                        textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))),
                Positioned(
                    left: 219,
                    top: Get.height / 519.5,
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Container(
                              child: Container(
                                width: Get.width / 3,
                                height: Get.height / 2.9,
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Group 736.png"
                                        .toString()), //ExactAssetImage('assets/example.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  // color: kPrimaryColor,
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0)),
                                ),
                              ),
                            )
                          ],
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
