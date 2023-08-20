import 'package:flutter/material.dart';

import '../util/themes/custommaterialcolor.dart';
import '../widgets/appbar.dart';
import '../widgets/bottonnavbar.dart';
import '../widgets/drawer.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appBar: MyAppbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
            child: Text(
          "Profile",
          style: const TextStyle(
              fontSize: 20, color: Colors.white, letterSpacing: 0.4),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_sharp,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      drawer: MyDrawer(
        accountName: 'hamza',
        accountEmail: 'hamza04032003',
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
