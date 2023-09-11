// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/appbar.dart'; // Make sure to import the correct path for your AppBar widget
import '../widgets/drawer.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
       begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          
          Colors.white,
          Color(0xFFA5D7E3),


        ],
      ),
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child:  MyAppbar(
screentitle: 'Profile',
        ),
      ),
      
      drawer: const MyDrawer(
      ),
      // bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              
              Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(24),
                  // height: MediaQuery.of(context).size.height * 0.5,
                  // width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
                    elevation: 0,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: [
                      SizedBox(height: 35),
                      SizedBox(
                        height: 160,
                        width: 160,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('lib/assets/images/avator2.png'),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Hamza Naeem',
                        style: GoogleFonts.figtree(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: const Color.fromRGBO(23, 63, 88, 1.0),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Roll  Number: 02 ',
                        style: GoogleFonts.figtree(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: const Color.fromRGBO(23, 63, 88, 1.0),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Student ID: 10030 ',
                        style: GoogleFonts.figtree(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: const Color.fromRGBO(23, 63, 88, 1.0),
                        ),
                      ),
                      const SizedBox(
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
                                Text(
                                  "Class: 1",
                                  style: GoogleFonts.figtree(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),),
                                Row(
                                  children: [
                                    Text(
                                      "Section: A",
                                      style: GoogleFonts.figtree(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                                 children: [
          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                color: Colors.orange,
                              ),
                              SizedBox(width: 20,),
                                   TextButton(
                    
                                            onPressed: () {
                    
                                              launch('tel:+923162327406  ');
                    
                                            },
                    
                                            child: Text('+923162327406 ',  style: GoogleFonts.figtree(
        fontSize: 14,
        fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ),)),
                             
     
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.email,
                                color: Colors.blueAccent,
                              ),
                                                          SizedBox(width: 20,),
        
                              Text(
                                "hamzanaeemm@hotmail.com",
                                style: GoogleFonts.figtree(
        fontSize: 14,
        fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ), )
                            ],
                          ),
                                                  SizedBox(height: 8,),
        
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                                                          SizedBox(width: 20,),
        
                              Text(
                                "Address: 123 Main St, Karachi",
                                style: GoogleFonts.figtree(
        fontSize: 14,
        fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ),)
                            ],
                          ),
                        ],
                      )
                    ]),
                  )),
              // teacher's Profile
              Card(
                elevation: 0,
                child: Column(
                  children: [
                    Text(
                      "Teacher's Details",
                      style: GoogleFonts.openSans(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'Muzammil Bilwani',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Column(
                               crossAxisAlignment: CrossAxisAlignment.center,    
               
                              children: [
                                Row(
                               mainAxisAlignment: MainAxisAlignment.start,
        
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                                                SizedBox(width: 10,),
        TextButton(
                    
                                            onPressed: () {
                    
                                              launch('tel:+923329103465  ');
                    
                                            },
                    
                                            child: Text('+923329103465 ' , style : GoogleFonts.figtree(
        fontSize: 14,
        fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ),)),
    
                                    
                                  ],
                                ),
                                Row(
                            children: [
                              const Icon(
                                Icons.email,
                                color: Colors.blueAccent,
                              ),
                                                          SizedBox(width: 10,),
        
                              Text(
                                "teachersmail@cc.com",
                                style: GoogleFonts.figtree(
        fontSize: 14,
        fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(186, 188, 197, 1.0),

      ), )
                            ],
                          ),
                          
                          ],
                        )
                      ],
                    ),
                  ],
                ),]
              ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
