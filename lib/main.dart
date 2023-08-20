import 'package:flutter/material.dart';
import 'package:school_managment_app/screens/assignments.dart';
import 'package:school_managment_app/screens/attendance.dart';
import 'package:school_managment_app/screens/loginscreen.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/screens/splashscreen.dart';
import 'package:school_managment_app/screens/timetable.dart';
import 'package:school_managment_app/util/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.customTheme,
        title: 'CampusConnect',
        // home: const ProfileScreen(),
        initialRoute: "/Splash",
        routes: {
          // "/": (context) => const login(),
          "/Splash": (context) => const SplashScreen(),

          "/Login": (context) => LoginScreen(),
          "/Profile": (context) => const ProfileScreen(),
          "/TimeTable": (context) => const TimeTable(),
          "/Assignments": (context) => const Assignments(),
          "/Attendance": (context) => const Attendance(),
        });
  }
}
