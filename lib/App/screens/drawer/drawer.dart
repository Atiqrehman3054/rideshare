// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/Widgets/common_widgets.dart';
import 'package:ride_app/App/screens/HistoryScreen/HistoryScreen.dart';
import 'package:ride_app/App/screens/RideDetailScreen/rideDetailScreen.dart';
import 'package:ride_app/App/screens/edit_profile/editprofile.dart';
import 'package:ride_app/App/screens/home/homeController.dart';
import 'package:ride_app/App/screens/map_screens/map1.dart';
import 'package:ride_app/App/screens/map_screens/map2.dart';
import 'package:ride_app/App/screens/matchingPassengerScreen/matchingPassengerScreen.dart';
import 'package:ride_app/App/screens/matchingRideScreen/matchingRideScreen.dart';
import 'package:ride_app/App/screens/profileVerificationScreen/profileVerificationScreen.dart';
import 'package:ride_app/App/utils/helping_file.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../Services/firebase_services/authentication.dart';
import '../imageFullScreen/imagefull.dart';

class Drawerr {
  ///Drawer
  static drawerr(context) {
    return Obx(
      () => ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: const BoxDecoration(color: AppColors.commonColor),
          accountName: Text(Get.find<HomeController>().name.toString()
              // Get.find<GetStartedController>().name.value
              ),
          accountEmail: Text(Get.find<HomeController>().email.toString()),
          currentAccountPicture: Get.find<HomeController>().image.value == ""
              ? CircleAvatar(
                  child: ClipOval(
                    child: Icon(Icons.person),
                  ),
                )
              : GestureDetector(
                  onTap: () async {
                    Get.to(() => DetailScreen(
                          imgUrl:
                              Get.find<HomeController>().image.value.toString(),
                        ));
                  },
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Get.find<HomeController>().image.value != ""
                          ? CachedNetworkImage(
                              imageUrl: Get.find<HomeController>()
                                  .image
                                  .value
                                  .toString(),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            )
                          : const Icon(Icons.person),
                    ),
                  ),
                ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.back();
              },
              leading: const Icon(
                Icons.travel_explore,
                color: Colors.orange,
              ),
              title: const Text("Ride"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(EditProfileView());
              },
              leading: const Icon(
                Icons.edit_sharp,
                color: Colors.orange,
              ),
              title: const Text("Edit Profile"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(HistoryScreen());
              },
              leading: const Icon(
                Icons.history,
                color: Colors.orange,
              ),
              title: const Text("History"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(ProfileVerificationScreen());
              },
              leading: const Icon(
                Icons.person,
                color: Colors.amber,
              ),
              title: const Text("your Profile"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(MatchingRideScreen());
              },
              leading: const Icon(
                Icons.car_crash,
                color: Colors.amber,
              ),
              title: const Text("Matching Rides"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(RiderDetailScreen());
              },
              leading: const Icon(
                Icons.details,
                color: Colors.red,
              ),
              title: const Text("Rider Detail"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(map2());
              },
              leading: const Icon(
                Icons.map,
                color: Colors.amber,
              ),
              title: const Text("Map 2"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(map1());
              },
              leading: const Icon(
                Icons.map,
                color: Colors.amber,
              ),
              title: const Text("Map 1"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 0,
            child: ListTile(
              onTap: () {
                Get.to(MatchingPassengerScreen());
              },
              leading: const Icon(
                Icons.person,
                color: Colors.amber,
              ),
              title: const Text("Matching Passenger"),
              trailing: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: GestureDetector(
            onTap: () async {
              CommonWidgets.confirmBox(
                  "Log Out", "Are u sure you want to Log out ?", () {
                AuthServices.logOutUser();
              });
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 0,
              child: const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
