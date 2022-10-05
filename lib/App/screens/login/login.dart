import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/Services/firebase_services/authentication.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';
import 'package:ride_app/App/screens/codeScreen/codeScreen.dart';
import 'package:ride_app/App/utils/helping_file.dart';
import '../../Common_Methods/common_widgets.dart';
import 'login_controller.dart';
import '../roleScreen/roleScreen.dart';

import 'package:awesome_dialog/awesome_dialog.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _resetController = new TextEditingController();
  var a = "";
  Map<String, dynamic>? userInfi;
  final formkey1 = GlobalKey<FormState>();
  final LogInController _controller = Get.put(LogInController());
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
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Container(
                    height: 600,
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
                        const Padding(
                          padding: EdgeInsets.all(28.0),
                          child: SizedBox(
                            width: 92.0,
                            height: 6.0,
                            child: DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Color(0xffEEEEEE)),
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
                                    return 'must enter Email';
                                  }
                                  return null;
                                },
                                controller: _controller.emailcontroller,
                                name: "Email",
                                icon: Icons.email,
                              ),
                              Custom_textfeild(
                                validation: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'must enter password';
                                  }
                                  return null;
                                },
                                controller: _controller.passcontroller,
                                name: "Password",
                                icon: Icons.password,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        InkWell(
                          onTap: () {
                            dialogconfirmBox("Reset", "Enter Email", () {
                              AuthServices.sendPasswordResetEmail(
                                  _resetController.text);
                            }, context, _resetController);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 208.0),
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(color: Color(0xff7C72EF)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              decoration: BoxDecoration(
                                // boxShadow: [
                                //   BoxShadow(
                                //       color: Colors.black26,
                                //       offset: Offset(0, 4),
                                //       blurRadius: 5.0)
                                // ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.0, 1.0],
                                  colors: [
                                    Color(0xff9991F6),
                                    Color(0xff756AED),
                                  ],
                                ),
                                // color: Colors.deepPurple.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ElevatedButton(
                                child:
                                    Get.find<LogInController>().isLoad.value ==
                                            false
                                        ? Text('Log in')
                                        : CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                onPressed: () {
                                  if (formkey1.currentState!.validate()) {
                                    Get.find<LogInController>().isLoad.value =
                                        true;
                                    Get.find<LogInController>().signin();
                                    FocusScope.of(context).unfocus();
                                  }
                                  // Get.to(welcome2());
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                      Size(Get.width / 1.5, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  // elevation: MaterialStateProperty.all(3),
                                  // shadowColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height / 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 82.0,
                              height: 1.0,
                              child: const DecoratedBox(
                                decoration: const BoxDecoration(
                                    color: Color(0xff707070)),
                              ),
                            ),
                            Text(" or Login with "),
                            const SizedBox(
                              width: 82.0,
                              height: 1.0,
                              child: const DecoratedBox(
                                decoration: const BoxDecoration(
                                    color: Color(0xff707070)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Group 399.png"),
                            SizedBox(
                              width: 11,
                            ),
                            InkWell(
                                onTap: () {
                                  AuthServices.googleSignin();
                                },
                                child:
                                    Image.asset("assets/images/Group 401.png")),
                            SizedBox(
                              width: 11,
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(CodeScreen());
                                },
                                child:
                                    Image.asset("assets/images/Group 380.png")),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " Don't Have Account?",
                              style: TextStyle(color: Color(0xffC9D5DA)),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(RoleScreen());
                              },
                              child: Text("Create new One",
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
                                      Get.to(login());
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
                                      Get.to(RoleScreen());
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

  static dialogconfirmBox(String titlle, String texte, VoidCallback clickb,
      BuildContext context, var _resetController) {
    return AwesomeDialog(
      // dialogBackgroundColor: Colors.amberAccent,
      btnOkText: "Send",
      showCloseIcon: true,
      btnOkColor: AppColors.commonColor,
      btnCancelColor: AppColors.commonColor,
      context: context,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Reset Password',
      desc: '.............',
      // customHeader: TextField(),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Reset Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.9,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.withOpacity(.3),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: TextField(
                  controller: _resetController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: "Email.."),
                ),
              ),
            ),
          ],
        ),
      ),
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        if (_resetController.text.toString().trim().isEmpty) {
          CommonWidgets.toastShow("Email field should not b empty!");
        } else {
          clickb();

          //  Get.back();

          // Get.snackbar("Link", "a Password Link has been sent to ${_resetController.text}",backgroundColor: Colors.amber,colorText: Colors.black,
          // icon: Icon(Icons.error), isDismissible: true);
        }
      },
    )..show();
  }
}
