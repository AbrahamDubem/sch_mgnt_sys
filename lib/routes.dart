import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:sch_mgnt_system/screens/assignment_screen/assignment_screen.dart';
import 'package:sch_mgnt_system/screens/datasheet_screen/datasheet_screen.dart';
import 'package:sch_mgnt_system/screens/fee_screens/fee_screens.dart';
import 'package:sch_mgnt_system/screens/home_screen/home_screen.dart';
import 'package:sch_mgnt_system/screens/login_screen/login_screen.dart';
import 'package:sch_mgnt_system/screens/my_profile/my_profile.dart';
import 'package:sch_mgnt_system/screens/result_screem/result_screen.dart';
import 'package:sch_mgnt_system/screens/splash_screens/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DataSheetScreen.routeName: (context) => DataSheetScreen(),
  ResultScreen.routeName: (context) => ResultScreen(),
};
