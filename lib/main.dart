import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_app/App/screens/HistoryScreen/HistoryScreen.dart';
import 'package:ride_app/App/screens/rideScreen/rideScreen.dart';
import 'package:ride_app/App/screens/splash_screen/splash_screen.dart';

import 'App/screens/RideDetailScreen/rideDetailScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 700),
        // designSize:  Size(1.sw, 1.sh),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Ride App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home:
                  //  RideScreen()
                  SplashScreenView()

              // RiderDetailScreen(),

              // map2()
              );
        });
  }
}

//new
