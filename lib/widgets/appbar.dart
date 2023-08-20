import 'package:flutter/material.dart';

import 'drawer.dart';


  Widget MyAppbar() {
    return AppBar(
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
    );
    // drawer:
    // MyDrawer(
    //   accountName: 'hamza',
    //   accountEmail: 'hamza04032003',
    // );
  }

