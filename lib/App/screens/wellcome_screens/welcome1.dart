import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';
import 'package:ride_app/App/screens/wellcome_screens/welcome2.dart';

class welcome1 extends StatefulWidget {
  const welcome1({super.key});

  @override
  State<welcome1> createState() => _welcome1State();
}

class _welcome1State extends State<welcome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 39,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: Get.width / 0.9,
                  height: Get.height / 1.59,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(140.0),
                        bottomRight: Radius.circular(0.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
          //Text("data"),
          Positioned(
            bottom: Get.height / 2.9,
            child: Container(
              width: Get.width,
              height: Get.height / 2.6,

              decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/Group 1080.png"
                      .toString()), //ExactAssetImage('assets/example.png'),
                  fit: BoxFit.cover,
                ),
                // color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
              // child:
              // Stack(
              // children: [
              //   Image.asset("assets/started_bg.png"),
              // Image.asset("assets/fcar1.png",),

              //   ],
              // ),
            ),
          ),
          Positioned(
            bottom: Get.height / 1.46,
            left: 75,
            child: Container(
              width: Get.width / 1.5,
              height: Get.height / 3.9,

              decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/Group 1079.png"
                      .toString()), //ExactAssetImage('assets/example.png'),
                  fit: BoxFit.cover,
                ),
                // color: kPrimaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
              // child:
              // Stack(
              // children: [
              //   Image.asset("assets/started_bg.png"),
              // Image.asset("assets/fcar1.png",),

              //   ],
              // ),
            ),
          ),

          Positioned(
              top: Get.height / 1.65,
              child: Padding(
                  padding: const EdgeInsets.only(left: 92.0),
                  child: Column(
                    children: [
                      // Text("Choose the route ",
                      //     style: GoogleFonts.lato(
                      //         textStyle: TextStyle(
                      //             fontSize: 21.0, ,color: Color(0xff9991F6)))),
                      Text("Choose the route ",
                          style: TextStyle(
                              fontSize: 21.0, color: Color(0xff9991F6))),
                      Text("Easily",
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.black)),
                    ],
                  ))),

          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Center(
                child:
                    // CommonWidgets.textt(
                    // "\n\n\n\n\n\nKnow Your driver in Advance and be\n able to view current location in real time\n on the map",
                    // 16.0,
                    // Color(0xff77808D)),

                    Text(
              "\n\n\n\n\n\nKnow Your driver in Advance and be\n able to view current location in real time\n on the map",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(
                  0xff77808D,
                ),
              ),
            )),
          ), //
          Padding(
            padding: const EdgeInsets.only(
              top: 548.0,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff756AED),
                    radius: 7,
                    //Text
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color.fromARGB(255, 11, 10, 6),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 7,
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color.fromARGB(255, 11, 10, 6),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 7,
                    ),
                  ),
                ],
              ),
            ),
          ), //SizedBox(height: 22,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 658.0),
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
                  child: Text('Next'),
                  onPressed: () {
                    Get.to(welcome2());
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    minimumSize:
                        MaterialStateProperty.all(Size(Get.width / 1.5, 50)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    // elevation: MaterialStateProperty.all(3),
                    // shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
          )
          // Text(data)
        ],
      ),
    ));
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: SafeArea(
//               child: Stack(
//           children: [
//             SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 79,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(28.0),
//                     child: Container(
//                       width: Get.width / 0.9,
//                       height: Get.height / 1.49,
//                       decoration: BoxDecoration(
//                         color: Color(0xffF5F6FA),
//                         borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(140.0),
//                             bottomRight: Radius.circular(0.0)),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 100,
//                   ),
//                 ],
//               ),
//             ),
//             //Text("data"),
//             Positioned(
//               bottom: Get.height / 3.5,
//               child: Container(
//                 width: Get.width,
//                 height: Get.height / 2.6,

//                 decoration: BoxDecoration(
//                   // color: Colors.black,
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/Group 1080.png"
//                         .toString()), //ExactAssetImage('assets/example.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   // color: kPrimaryColor,
//                   borderRadius: const BorderRadius.only(
//                       bottomLeft: Radius.circular(40.0),
//                       bottomRight: Radius.circular(40.0)),
//                 ),
//                 // child:
//                 // Stack(
//                 // children: [
//                 //   Image.asset("assets/started_bg.png"),
//                 // Image.asset("assets/fcar1.png",),

//                 //   ],
//                 // ),
//               ),
//             ),
//             Positioned(
//               left: 79,
//               bottom: Get.height / 1.59,
//               child: Container(
//                 width: Get.width / 1.6,
//                 height: Get.height / 3.9,

//                 decoration: BoxDecoration(
//                   // color: Colors.black,
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/Group 1079.png"
//                         .toString()), //ExactAssetImage('assets/example.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   // color: kPrimaryColor,
//                   borderRadius: const BorderRadius.only(
//                       bottomLeft: Radius.circular(40.0),
//                       bottomRight: Radius.circular(40.0)),
//                 ),
//                 // child:
//                 // Stack(
//                 // children: [
//                 //   Image.asset("assets/started_bg.png"),
//                 // Image.asset("assets/fcar1.png",),

//                 //   ],
//                 // ),
//               ),
//             ),
//             Positioned(
//                 top: Get.height / 1.47,
//                 child: Padding(
//                     padding: const EdgeInsets.only(left: 92.0),
//                     child: Column(
//                       children: [
//                         Text(
//                           "Choose the route",
//                           style: TextStyle(
//                               color: Color(0xff9991F6),
//                               fontSize: 23,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           "Easily",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 23,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ))),
//             Padding(
//               padding: const EdgeInsets.only(top: 558.0),
//               child: Center(
//                   child: Text(
//                 "\n\n\n\n\n\nKnow Your driver in Advance and be\n able to view current location in real time\n on the map",
//                 style: TextStyle(fontSize: 13,color: Color(0xff77808D)),
//               )),
//             ),//
//             Padding(
//               padding: const EdgeInsets.only(top: 698.0,),
//               child: Center(
//                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                   CircleAvatar(
//             backgroundColor: Color(0xff756AED),
//             radius: 10,
//             //Text
//           ),SizedBox(width: 32,), CircleAvatar(
//               radius: 10.22,
//               backgroundColor: Color.fromARGB(255, 11, 10, 6),
//               child: CircleAvatar(backgroundColor: Colors.white,
//                 radius: 10,

//               ),
//             ),SizedBox(width: 32,), CircleAvatar(
//               radius: 10.22,
//               backgroundColor: Color.fromARGB(255, 11, 10, 6),
//               child: CircleAvatar(backgroundColor: Colors.white,
//                 radius: 10,

//               ),
//             ),
//                 ],),
//               ),
//             ),//SizedBox(height: 22,),
//              Center(
//                child: Padding(
//                  padding: const EdgeInsets.only(top:728.0),
//                  child: ElevatedButton(
//                       child: Text('Sign Up'),
//                       onPressed: () {Get.to(const welcome2());},
//                       style: ElevatedButton.styleFrom(
//                         shape: new RoundedRectangleBorder(
//                      borderRadius: new BorderRadius.circular(30.0),
//                      ),
//                           primary:  Color(0xff756AED),
//                           padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 2.8, vertical: MediaQuery.of(context).size.height / 60,),
//                           textStyle:
//                               TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     ),
//                ),
//              ),
//              SizedBox(height: 300,)
//            // Text(data)
//           ],
//               ),
//             ),
//         ));
//   }
// }
  }
}
