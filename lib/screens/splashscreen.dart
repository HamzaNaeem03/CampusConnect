import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_managment_app/screens/loginscreen.dart';
import 'package:school_managment_app/util/themes/custommaterialcolor.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, "/Login");
    });
    return Scaffold(
      backgroundColor: colorCustom,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "CampusConnect",
                  style: GoogleFonts.figtree(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          
        ],
      ),
    );
  }
}
