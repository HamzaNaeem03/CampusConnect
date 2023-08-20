import 'package:flutter/material.dart';

import '../util/themes/custommaterialcolor.dart';

const IconData school = IconData(0xe559, fontFamily: 'MaterialIcons');

class MyDrawer extends StatelessWidget {
  const MyDrawer(
      {super.key, required this.accountName, required this.accountEmail});
  final String accountName;
  final String accountEmail;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text(
                  accountName,
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  accountEmail,
                  style: TextStyle(color: Colors.white),
                ),
                onDetailsPressed: () {},
              )),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.person, color: colorCustom),
            title: Center(
              child: Text(
                "Profile",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.assignment_sharp, color: colorCustom),
            title: Center(
              child: Text(
                "Assignments",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_view_month, color: colorCustom),
            title: Center(
              child: Text(
                "Attendance",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today, color: colorCustom),
            title: Center(
              child: Text(
                "Timetable",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ), onTap: (){
              Navigator.pushNamed(context, "/TimeTable");
            },
          ),
          ListTile(
            leading: Icon(IconData(0xe559, fontFamily: 'MaterialIcons'),
                color: colorCustom),
            title: Center(
              child: Text(
                "Subjects",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.payments_outlined, color: colorCustom),
            title: Center(
              child: Text(
                "Fees",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.directions_bus_filled, color: colorCustom),
            title: Center(
              child: Text(
                "Transport  Details",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 10),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.logout, color: colorCustom),
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
}
