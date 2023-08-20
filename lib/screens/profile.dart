import 'package:flutter/material.dart';
import '../util/themes/custommaterialcolor.dart';
import '../widgets/appbar.dart'; // Make sure to import the correct path for your AppBar widget
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
      appBar: AppBar(
        title: Text('Profile'),
      ),
      // Use your custom MyAppbar widget here
      drawer: MyDrawer(
        accountName: 'hamza',
        accountEmail: 'hamza04032003',
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [
          // Student Profile
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/avator2.png'),
                ),
                SizedBox(height: 10),
                Text('Student Name: Syed Kumail Abbas'),
                Text('Roll Number: 909f'),
                Text('Section: A'),
                Text('Batch: 2023'),
                Text('Semester: 2'),
                Text('Email: kumailabbass****@gmail.com'),
                Text('Phone: 92+********3'),
                Text('Address: 123 Main St, Karachi'),
                SizedBox(height: 20),
              ],
            ),
          ),

          // HOD Profile
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/avator1.png'),
                ),
                SizedBox(height: 10),
                Text('HOD Name: Mercedes Roa'),
                Text('Email: hod@gmail.com'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
