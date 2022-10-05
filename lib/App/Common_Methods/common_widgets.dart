import 'package:flutter/material.dart';
import 'package:get/get.dart';




  Padding Custom_textfeild(
      {String? name,
      String? Function(String? val)? validation,
      IconData? icon,
      TextEditingController? controller,
      bool obscureText = false}) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFffffff),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              // decoration: BoxDecoration(

              //     borderRadius: BorderRadius.circular(5),
              //     border: Border.all(color: Colors.red)),
              child: TextFormField(
                obscureText: obscureText,
                keyboardType: TextInputType.text,
                validator: validation!,
                controller: controller,

                decoration: InputDecoration(
                    prefixIcon: Icon(
                      icon,
                      color: Color(0xff756AED),
                    ),
                    border: InputBorder.none,
                    // labelText: "Name",
                    hintText: name),
                // controller: controller,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }


class Custom_button extends StatelessWidget {
  Custom_button({
    Key? key,
    required this.name,
    required this.onpressed,
  }) : super(key: key);

  String name;
  Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          decoration: BoxDecoration(
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
            child: Text(name),
            onPressed: onpressed,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(Get.width / 1.5, 50)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              // elevation: MaterialStateProperty.all(3),
              // shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
