import 'package:error_screen/screens/connection_faild.dart';
import 'package:error_screen/screens/connection_lost.dart';
import 'package:error_screen/screens/broken_link.dart';
import 'package:error_screen/screens/artical_not_found.dart';
import 'package:error_screen/screens/no_space.dart';
import 'package:error_screen/screens/no_result_found.dart';
import 'package:error_screen/screens/payment_faild.dart';
import 'package:error_screen/screens/something_wrong.dart';
import 'package:error_screen/screens/time_error.dart';
import 'package:error_screen/screens/location_error.dart';
import 'package:error_screen/screens/router_offline.dart';
import 'package:error_screen/screens/no_connection.dart';
import 'package:error_screen/screens/no_file.dart';
import 'package:error_screen/screens/camera_access.dart';
import 'package:error_screen/screens/not_found_error.dart';
import 'package:error_screen/screens/something_went_wrong.dart';
import 'package:error_screen/screens/file_not_found.dart';
import 'package:error_screen/screens/error.dart';
import 'package:error_screen/screens/error_2.dart';
import 'package:error_screen/screens/not_found_error_2.dart';
import 'package:error_screen/screens/location_access.dart';
import 'package:flutter/material.dart';

List<Widget> screenList = [
  const NoConnectionScreen(),
  const NotFoundErrorScreen(),
  const NotFoundErrorScreen2(),
  const SomethingWentWrongScreen(),
  const FileNotFoundScreen(),
  const SomethingWrongScreen(),
  const ErrorScreen(),
  const Error2Screen(),
  const LocationAccessScreen(),
  const ConnectionLostScreen(),
  const BrokenLinkScreen(),
  const ArticleNotFoundScreen(),
  const NoSpaceScreen(),
  const NoResultFoundScreen(),
  const PaymentFaildScreen(),
  const TimeErrorScreen(),
  const LocationErrorScreen(),
  const RouterOfflineScreen(),
  const ConnectionFaildScreen(),
  const NoFileScreen(),
  const CameraAccessScreen(),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20 Flutter Error State Pages',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Swipe to check the next Screen
      home: PageView.builder(
        itemCount: screenList.length,
        itemBuilder: (context, index) {
          return screenList[index];
        },
      ),
    );
  }
}
