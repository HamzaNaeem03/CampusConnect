import "package:flutter/material.dart";
import "../widgets/appbar.dart";
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
      body: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Monday",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    _buildSubjectCard(Image.asset('lib/assets/icons/eng.png'),
                        'English', '9:00 - 10:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/paint-palette.png'),
                        'Art',
                        '10:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/computer.png'),
                        'Computer',
                        '11:00 - 12:00',
                        1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Tuesday",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    _buildSubjectCard(Image.asset('lib/assets/icons/eng.png'),
                        'English', '9:00 - 10:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/paint-palette.png'),
                        'Art',
                        '10:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/computer.png'),
                        'Computer',
                        '11:00 - 12:00',
                        1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Wednesday",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    _buildSubjectCard(Image.asset('lib/assets/icons/eng.png'),
                        'English', '9:00 - 10:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/paint-palette.png'),
                        'Art',
                        '10:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/computer.png'),
                        'Computer',
                        '11:00 - 12:00',
                        1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Thursday",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    _buildSubjectCard(Image.asset('lib/assets/icons/eng.png'),
                        'English', '9:00 - 10:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/paint-palette.png'),
                        'Art',
                        '10:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/computer.png'),
                        'Computer',
                        '11:00 - 12:00',
                        1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Friday",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    _buildSubjectCard(Image.asset('lib/assets/icons/eng.png'),
                        'English', '9:00 - 10:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/paint-palette.png'),
                        'Art',
                        '10:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/computer.png'),
                        'Computer',
                        '11:00 - 12:00',
                        1),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildSubjectCard(
    Image icon,
    String subject,
    String time,
    int roomNo,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: SizedBox(width: 36, height: 36, child: icon),
        title: Text(
          subject,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          ' $time   |   Room: $roomNo',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
