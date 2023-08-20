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
    const Attendance(),
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
      items: [
        
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: colorCustom),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment_sharp, color: colorCustom),
          label: 'Assignments',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_view_month, color: colorCustom),
          label: 'Attendance',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, color: colorCustom),
          label: 'Timetable',
        ),
      ],
      selectedItemColor: Color.fromRGBO(23, 63, 88, 1.0),
      backgroundColor: Colors.transparent,
      unselectedItemColor: colorCustom,
      onTap: (Index) {
        setState(() {
          _currentIndex = Index;
        });
        
//         if (Index == 0) {
//   Navigator.pushNamed(context, "/Profile");
// } 
// else if(Index == 1) {
// Navigator.pushNamed(context, "/Assignments");
// } 
// else if(Index == 2) {
// Navigator.pushNamed(context, "/Attendance");
// } 
// else {
// Navigator.pushNamed(context, "/TimeTable");}
      },
    );
  }
}
