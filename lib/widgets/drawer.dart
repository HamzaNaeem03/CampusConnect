import 'package:flutter/material.dart';

import '../util/themes/custommaterialcolor.dart';

const IconData school = IconData(0xe559, fontFamily: 'MaterialIcons');

class MyDrawer extends StatelessWidget {
  const MyDrawer(
      {super.key,});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar('lib/assets/images/campusconnectLOGO.png'),
                accountName: Text(
                  'campusConnect',
                  style: TextStyle(color: Colors.white),
                ),
                
                onDetailsPressed: () {}, accountEmail: null,
              )),
          SizedBox(height: 10),
          ListTile(
          leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/man.png')),
            title: Center(
              child: Text(
                "Profile",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/Profile");
            },
          ),
          ListTile(
          leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/clipboard.png')),
            title: Center(
              child: Text(
                "Assignments",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/Assignments");
            },
          ),
          // ListTile(
          // leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/day.png')),
          //   title: Center(
          //     child: Text(
          //       "Attendance",
          //       style: Theme.of(context).textTheme.titleMedium,
          //     ),
          //   ),
          // ),
          ListTile(
          leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/schedule.png')),
            title: Center(
              child: Text(
                "Timetable",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/TimeTable");
            },
          ),
          // ListTile(
          //             leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/book-stack.png')),

          //   title: Center(
          //     child: Text(
          //       "Subjects",
          //       style: Theme.of(context).textTheme.titleMedium,
          //     ),
          //   ),
          // ),
          // ListTile(
          // leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/money.png')),
          //   title: Center(
          //     child: Text(
          //       "Fees",
          //       style: Theme.of(context).textTheme.titleMedium,
          //     ),
          //   ),
          // ),
          // ListTile(
          // leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/school-bus.png')),
          //   title: Center(
          //     child: Text(
          //       "Transport  Details",
          //       style: Theme.of(context).textTheme.titleMedium,
          //     ),
          //   ),
          // ),
          Divider(),
          SizedBox(height: 10),
          InkWell(
            child: ListTile(
          leading:SizedBox( width: 24, height: 24 ,child: Image.asset('lib/assets/icons/logout.png')),
              title: Center(
                child: Text(
                  "Log out",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/Login");
              },
            ),
          ),
        ],
      ),
    );
  }

  // Widget _draweritem(
  //   BuildContext context,
  //   Image icon,
  //   String itemname,
  //   String route,
  // ) {
  //   return  
  //       ListTile(
  //       leading: SizedBox(width: 24, height: 24, child: icon),
  //     title: Center(
  //       child: Text(
  //         itemname,
  //         style: Theme.of(context).textTheme.titleMedium,
  //       ),
  //     ),
  //     onTap: () {
  //       Navigator.pushNamed(context, route);
  //     },
   
  //   );
  // }
}
