import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:scaffold_gradient_background/scaffold_gradient_background.dart";
import "../widgets/appbar.dart";
import "../widgets/drawer.dart";

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
         gradient: const LinearGradient(
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
screentitle: 'Timetable',
        ),
      ),
      
      drawer: const MyDrawer(
      ),
      // bottomNavigationBar: BottomNavBar(),
      body: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Monday",
                      style: GoogleFonts.figtree(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),),
                    _buildSubjectCard(Image.asset('lib/assets/icons/calculating.png'),
                        'Maths', '8:00 - 10:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/paint-palette.png'),
                        'Art',
                        '10:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/dna.png'),
                        'Biology',
                        '11:00 - 12:00',
                        1),
                        _buildSubjectCard(
                        Image.asset('lib/assets/icons/chemistry.png'),
                        'Chemistry',
                        '12:00 - 1:00',
                        1),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tuesday",
                     style: GoogleFonts.figtree(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ), ),
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
                        _buildSubjectCard(
                        Image.asset('lib/assets/icons/atom.png'),
                        'Physics',
                        '11:00 - 12:00',
                        1),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Wednesday",
                      style: GoogleFonts.figtree(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ), ),
                    _buildSubjectCard(Image.asset('lib/assets/icons/eng.png'),
                        'English', '8:00 - 9:00', 1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/calculating.png'),
                        'Maths',
                        '9:00 - 11:00',
                        1),
                    _buildSubjectCard(
                        Image.asset('lib/assets/icons/chemistry.png'),
                        'Chemistry',
                        '11:00 - 12:00',
                        1),
                        _buildSubjectCard(
                        Image.asset('lib/assets/icons/dna.png'),
                        'Biology',
                        '12:00 - 1:00',
                        1),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Thursday",
                      style: GoogleFonts.figtree(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),),
                    _buildSubjectCard(Image.asset('lib/assets/icons/atom.png'),
                        'Physics', '8:00 - 10:00', 1),
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
                        _buildSubjectCard(
                        Image.asset('lib/assets/icons/calculating.png'),
                        'Maths',
                        '11:00 - 12:00',
                        1),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Friday",
                      style: GoogleFonts.figtree(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),
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
                side: BorderSide.none,

        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
          leading: (SizedBox(height: 36,child: icon)),
        title: Text(
          subject,
                style: Theme.of(context).textTheme.displayMedium,
        ),
        subtitle: Text(
          ' $time   |   Room: $roomNo',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
