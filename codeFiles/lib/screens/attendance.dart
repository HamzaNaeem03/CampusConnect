import 'package:campus_connect/widgets/appbar.dart';
import 'package:campus_connect/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class GridItem {
  final String day;
  final String date;
  final Color color;

  GridItem({
    required this.day,
    required this.date,
    required this.color,
  });
}

class AttendanceTable extends StatelessWidget {
  final List<GridItem> items = [
    GridItem(day: 'Mon', date: '01', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Tue', date: '02', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Wed', date: '03', color: const Color.fromRGBO(250, 150, 150, 1.0)),
    GridItem(day: 'Thu', date: '04', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Fri', date: '05', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Mon', date: '08', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Tue', date: '09', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Wed', date: '10', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Thu', date: '11', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Fri', date: '12', color: const Color.fromRGBO(250, 150, 150, 1.0)),
GridItem(day: 'Mon', date: '15', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Tue', date: '16', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Wed', date: '17', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Thu', date: '18', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Fri', date: '19', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Mon', date: '22', color: const Color.fromRGBO(250, 150, 150, 1.0)),
    GridItem(day: 'Tue', date: '23', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Wed', date: '24', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Thu', date: '25', color: const Color.fromRGBO(250, 150, 150, 1.0)),
    GridItem(day: 'Fri', date: '26', color: const Color.fromRGBO(191, 254, 197, 1.0)),
GridItem(day: 'Mon', date: '29', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    GridItem(day: 'Tue', date: '30', color: const Color.fromRGBO(191, 254, 197, 1.0)),
    // Add more items as needed
  ];

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
        child: MyAppbar(
          screentitle: 'Attendance',
        ),
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, // 5 items in each row
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Container(
                padding: const EdgeInsets.all(2),
                child: GridTile(
                  child: GridItemWidget(item: item),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class GridItemWidget extends StatelessWidget {
  final GridItem item;

  GridItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: item.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            item.day,
            style: GoogleFonts.figtree(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        // color:  Colors.white,
        color: const Color.fromRGBO(76, 175, 199, 1.0),

      ),
          ),
          Text(
            item.date,
            style: GoogleFonts.figtree(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color.fromRGBO(23, 63, 88, 1.0),
      ),),
        ],
      ),
    );
  }
}
