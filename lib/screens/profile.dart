import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      // Use your custom MyAppbar widget here
      drawer: MyDrawer(
        accountName: 'hamza',
        accountEmail: 'hamza04032003',
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Student Profile
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                    width: 140,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/avator2.png'),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'kumail Abbass',
                    style: GoogleFonts.figtree(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Roll  Number: 909f ',
                    style: GoogleFonts.figtree(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity * 0.3,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Class: ",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  "1",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Section: ",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  "A",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity * 0.3,
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: Colors.blueAccent,
                                    ),
                                    Text(
                                      "kumailabbass****@gmail.com",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "92+********3",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Address: 123 Main St, Karachi",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),

              // teacher's Profile
              Card(
                child: Column(
                  children: [
                    Text(
                      "Teacher's Details",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                                        SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/avator1.png'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'Mercedes Roa',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Row(
                              children: [
                                Icon(
                                      Icons.phone,
                                      color: Colors.orange,size: 20,
                                    ),
                                    Text(
                                      "92+********3",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.blueAccent,
                                  size: 20,
                                ),
                                Text(
                                  'teachersmail@cc.com',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
SizedBox(height: 50,),
              //mother profile
              Card(
                child: Column(
                  children: [
                    Text(
                      "Mother's Details",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/avator1.png'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              ' . ',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Row(
                              children: [
                                Icon(
                                      Icons.phone,
                                      color: Colors.orange,size: 20,
                                    ),
                                    Text(
                                      "92+********3",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.blueAccent,
                                  size: 20,
                                ),
                                Text(
                                  'mothermail@gamil.com',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
