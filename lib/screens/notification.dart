import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
        Text("No new Notifications"),
        // ElevatedButton(onPressed: (){
        //   Navigator(),
        // }, )

        ]),
      ),
    );
  }
}