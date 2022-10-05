import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/screens/wellcome_screens/welcome3.dart';

class welcome2 extends StatefulWidget {
  const welcome2({super.key});

  @override
  State<welcome2> createState() => _welcome2State();
}

class _welcome2State extends State<welcome2> {
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
                  height: Get.height / 1.79,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(140.0),
                        bottomRight: Radius.circular(0.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
          //Text("data"),
          Positioned(
            bottom: Get.height / 2.3,
            child: Container(
              width: Get.width,
              height: Get.height / 2.6,

              decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/Group 1081.png"
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
              top: Get.height / 1.85,
              child: Padding(
                  padding: const EdgeInsets.only(left: 92.0),
                  child: Column(
                    children: [
                      Text(
                        "Request The Ride ",
                        style: TextStyle(
                            color: Color(0xff9991F6),
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Quickly",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))),
          Padding(
            padding: const EdgeInsets.only(top: 258.0),
            child: Center(
                child: Text(
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
              top: 448.0,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                ],
              ),
            ),
          ), //SizedBox(height: 22,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 588.0),
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
                    Get.to(welcome3());
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
  }
}
