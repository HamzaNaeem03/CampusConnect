import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/themes/custommaterialcolor.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),leading: InkWell(child: Icon(Icons.arrow_back_ios_new ,), 
        // onTap:             Navigator.pop(context)
        ),

        title: Center(
            child: Text(
          "Notification",
          style: const TextStyle(
              fontSize: 20, color: Colors.white, letterSpacing: 0.4),
        )),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "No New Notification",
                style: GoogleFonts.figtree(
                  color: colorCustom,
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
