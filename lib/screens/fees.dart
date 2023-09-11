import 'package:campus_connect/screens/notification.dart';
import 'package:campus_connect/widgets/drawer.dart';
import 'package:campus_connect/widgets/fees/paidfees.dart';
import 'package:campus_connect/widgets/fees/unpaidfees.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class fees extends StatelessWidget {
  const fees({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: ScaffoldGradientBackground(
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.white,
              Color(0xFFA5D7E3),
            ],
          ),
          appBar: AppBar(
      // shadowColor: Colors.transparent,
      // backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Center(
          child: Text(
        'Fees',
        style: TextStyle(
            fontSize: 20, color: Colors.white, letterSpacing: 0.4),
      )),
      
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications_sharp,
          ),
          onPressed: () {
            showRoundedBottomSheet(context);
          },
        )
      ],
      bottom: TabBar(
              tabs: [
                Tab(child: Text('Paid fees', style: GoogleFonts.figtree(
        fontWeight: FontWeight.bold,
        color:  Colors.white,
                )),),
                Tab(child: Text('Unpaid fees', style: GoogleFonts.figtree(
        fontWeight: FontWeight.bold,
        color:  Colors.white,
                )),),],
            ),
    ),
          drawer: const MyDrawer(),
          
          body: TabBarView(
            children: [
              paidfees(),
              unpaidfees(),
            ],
          ),
          ),
    );
  }
}
