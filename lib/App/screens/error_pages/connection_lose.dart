import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';

import '../../Common_Methods/common_methods.dart';

class ConnectionLostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/10_Connection Lost.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.12,
            left: MediaQuery.of(context).size.width * 0.065,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 25,
                    color: Color(0xFF59618B).withOpacity(0.17),
                  ),
                ],
              ),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF6371AA)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    )),

                // color: Color(0xFF6371AA),
                onPressed: () async {
                  await CommonMethodst.checkConnection() == true
                      ? Get.toNamed('/splash-screen')
                      : CommonWidgets.toastShow("Please turn on internet!");
                },
                child: Text(
                  "retry".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
