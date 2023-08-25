import 'package:flutter/material.dart';
import 'package:school_managment_app/screens/assignments.dart';
import 'package:school_managment_app/screens/attendance.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/screens/timetable.dart';

import '../util/themes/custommaterialcolor.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> tabBar = [
    const ProfileScreen(),
    const Assignments(),
     const TimeTable(),
  ];
  
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      currentIndex: _currentIndex,
      iconSize: 26,
      selectedIconTheme: Theme.of(context).iconTheme,
      unselectedItemColor: colorCustom,
      selectedItemColor: colorCustom,
      items: [
        
        BottomNavigationBarItem(
          icon:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/man.png')),

          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/clipboard.png')),
          label: 'Assignments',
        ),
        // BottomNavigationBarItem(
        //             icon:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/day.png')),

        //   label: 'Attendance',
        // ),
        BottomNavigationBarItem(
                    icon:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/schedule.png')),

          label: 'Timetable',
        ),
      ],
      // selectedItemColor: Color.fromRGBO(23, 63, 88, 1.0),
      backgroundColor: Colors.transparent,
      // unselectedItemColor: colorCustom,
      onTap: (Index) {
        setState(() {
          Index = _currentIndex;
                });
        
        if (Index == 0) {
  Navigator.pushNamed(context, "/Profile");
} 
else if(Index == 1) {
Navigator.pushNamed(context, "/Assignments");
} 
else if(Index == 2) {
Navigator.pushNamed(context, "/TimeTable");
} 
// else {
// Navigator.pushNamed(context, "/TimeTable");}
      },
    );
    
  }
}
