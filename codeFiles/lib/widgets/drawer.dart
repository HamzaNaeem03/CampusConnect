import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const IconData school = IconData(0xe559, fontFamily: 'MaterialIcons');

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName:  Text(
                  'CampusConnect',
                  style: GoogleFonts.figtree(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
                ), accountEmail: null,

              )),
          const SizedBox(height: 10),
          builddrawerItem(
            icon: Image.asset('lib/assets/icons/man.png'),
            title: "Profile",
            route: "/Profile",
          ),
          builddrawerItem(
            icon: Image.asset('lib/assets/icons/clipboard.png'),
            title: "Assignments",
            route: "/Assignments",
          ),
          builddrawerItem(
            icon: Image.asset('lib/assets/icons/day.png'),
            title: "Attendance",
            route: "/Attendance",
          ),
          builddrawerItem(
            icon: Image.asset('lib/assets/icons/schedule.png'),
            title: "Timetable",
            route: "/TimeTable",
          ),
          // builddrawerItem(
          //   icon: Image.asset('lib/assets/icons/book-stack.png'),
          //   title: "Subjects",
          //   route: "/subject",
          // ),
          builddrawerItem(
            icon: Image.asset('lib/assets/icons/money.png'),
            title: "Fees",
            route: "/fees",
          ),
          builddrawerItem(
            icon: Image.asset('lib/assets/icons/school-bus.png'),
            title: "Transport  Details",
            route: "/busdetails",
          ),
          const Divider(),
          const SizedBox(height: 40),
          
          InkWell(
            child: builddrawerItem(
              icon: Image.asset('lib/assets/icons/logout.png'),
              title: "Log out",
              route: "/Splash",
            ),
          ),
          
        ],
      ),

    );
  }
}

class builddrawerItem extends StatelessWidget {
  builddrawerItem(
      {required this.icon, required this.title, required this.route});
  final String title;
  final String route;
  Image icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: SizedBox(width: 24, height: 24, child: icon),
      title: Center(
        child: Text(
          title,
          style: GoogleFonts.figtree(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
