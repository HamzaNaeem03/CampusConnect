import 'package:flutter/material.dart';

import '../widgets/bottonnavbar.dart';
import '../widgets/drawer.dart';

class Assignments extends StatefulWidget {
  const Assignments({super.key});

  @override
  State<Assignments> createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
            child: Text(
          "Assignments",
          style: const TextStyle(
              fontSize: 20, color: Colors.white, letterSpacing: 0.4),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_sharp,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/notifications");

            },
          )
        ],
      ),
      drawer: MyDrawer(
        accountName: 'hamza',
        accountEmail: 'hamza04032003',
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildAssignmentCard(Image.asset('lib/assets/icons/computer.png'),"Computer",
                  "20-Aug", "submit lab file along with the final assignment")
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAssignmentCard(
    Image icon,
    String subject,
    String deadlinedate,
    String details,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: (icon),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text("Due On :"),
                Text(
                  deadlinedate,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
                        SizedBox(height: 4,),

          ],
        ),
        subtitle: Column(
          children: [
            Text(
              details,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        
      ),
    );
  }
}
