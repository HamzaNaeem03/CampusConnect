import 'package:campus_connect/screens/assignments.dart';
import 'package:campus_connect/screens/attendance.dart';
import 'package:campus_connect/screens/busroute.dart';
import 'package:campus_connect/screens/fees.dart';
import 'package:campus_connect/screens/iintroducation.dart';
import 'package:campus_connect/screens/loginscreen.dart';
import 'package:campus_connect/screens/profile.dart';
import 'package:campus_connect/screens/splashscreen.dart';
import 'package:campus_connect/screens/subject.dart';
import 'package:campus_connect/screens/timetable.dart';
import 'package:campus_connect/util/themes/theme.dart';
import 'package:campus_connect/widgets/authscervice.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
bool show = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  // show = prefs.getBool('ON_BOARDING') ?? true;
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
    final AuthService authService = AuthService();

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: AppTheme.customTheme,
        title: 'CampusConnect',
        home:FutureBuilder<bool>(
        future: authService.isLoggedIn(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator or splash screen while checking login status.
            return CircularProgressIndicator();
          } else if (snapshot.data == true) {
            // User is logged in, navigate to the home screen.
            return ProfileScreen();
          } else {
            // User is not logged in, navigate to the login screen.
            return LoginScreen();
          }
        },
      ),
   
        
        
        
        
        
        
        
        
        // show ? IntroScreen() :  ProfileScreen(),

        initialRoute: "/Splash",
        routes: {
          // "/": (context) => const login(),
          "/Splash": (context) => const SplashScreen(),

          "/Login": (context) => LoginScreen(),
          "/Profile": (context) => const ProfileScreen(),
          "/TimeTable": (context) => const TimeTable(),
          "/Assignments": (context) => const Assignments(),
          "/Attendance": (context) =>  AttendanceTable(),
          "/subject": (context) =>  const Subject(),
                    "/fees": (context) =>  const fees(),
          // "/": (context) => const IntroScreen(),

          
                    "/busdetails": (context) =>  const busdetails(),

           
        }
         );
  }
}
