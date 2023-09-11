import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showRoundedBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.0), // Adjust the radius as needed
      ),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: 100,
        child: Center(
          child: Text(
            "No new notification",
            style:  GoogleFonts.figtree(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        // color:  Colors.white,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ),),
        ),
      );
    },
  );
}