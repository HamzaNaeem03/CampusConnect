import "package:flutter/material.dart";

import "../widgets/bottonnavbar.dart";
import "../widgets/drawer.dart";




class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
            child: Text(
          "Timetable",
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
    
body: Column(
  children: [
    Text("Days", style: Theme.of(context).textTheme.titleMedium,),
   Text("monday")
  ],
),
    );
  }
}