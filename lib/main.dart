import 'package:flutter/material.dart';
import 'package:school_managment_app/screens/assignments.dart';
import 'package:school_managment_app/screens/attendance.dart';
import 'package:school_managment_app/screens/loginscreen.dart';
import 'package:school_managment_app/screens/notification.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/screens/splashscreen.dart';
import 'package:school_managment_app/screens/subject.dart';
import 'package:school_managment_app/screens/timetable.dart';
import 'package:school_managment_app/util/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.customTheme,
        title: 'CampusConnect',
        // home:  LoginScreen(),
        initialRoute: "/Splash",
        routes: {
          // "/": (context) => const login(),
          "/Splash": (context) => const SplashScreen(),

          "/Login": (context) => LoginScreen(),
          "/Profile": (context) => const ProfileScreen(),
          "/TimeTable": (context) => const TimeTable(),
          "/Assignments": (context) => const Assignments(),
          "/Attendance": (context) => const Attendance(),
          "/notifications": (context) => NotificationScreen(),
          // "/subject": (context) =>  Subject(),
        });
  }
}
