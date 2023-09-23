import 'package:flutter/material.dart';

import '../screens/notification.dart';

class MyAppbar extends StatelessWidget {
  MyAppbar({required this.screentitle});
  String screentitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // shadowColor: Colors.transparent,
      // backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white),
      title: Center(
          child: Text(
        screentitle,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, letterSpacing: 0.4),
      )),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications_sharp,
          ),
          onPressed: () {
            showRoundedBottomSheet(context);
          },
        )
      ],
    );
  }
}
