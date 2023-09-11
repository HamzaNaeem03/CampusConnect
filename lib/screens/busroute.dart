import 'package:campus_connect/widgets/appbar.dart';
import 'package:campus_connect/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:url_launcher/url_launcher.dart';

class busdetails extends StatelessWidget {
  const busdetails({super.key});

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
          screentitle: 'Transport Details',
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              columnSpacing: 5,
              columns: [
                DataColumn(
                  label: Text(
                    'Bus No.',
                    style: GoogleFonts.figtree(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Driver Name',
                    style: GoogleFonts.figtree(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Route',
                    style: GoogleFonts.figtree(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    ),
                  ),
                ),
              ],
              rows: [
                DataRow(cells: [
                  const DataCell(Text('01')),
                  DataCell(
                    TextButton(
                      onPressed: () {
                        launch('tel:03477777777');
                      },
                      child: const Text('Ahmed',style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                    ),
                  ),
                  const DataCell(Text('Saddar')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('02')),
                  DataCell(
                    TextButton(
                        onPressed: () {
                          launch('tel:03331234567');
                        },
                        child: const Text('Ali', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),),
                  const DataCell(
                      Text('Gulistan E Johar')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('03')),
                  DataCell(TextButton(
                      onPressed: () {
                        launch('tel:03162327406');
                      },
                      child: const Text('Pasha', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),),
                  const DataCell(Text('Gulshan E Iqbal')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('04')),
                  DataCell(
                    TextButton(
                        onPressed: () {
                          launch('tel:03451234567');
                        },
                        child: const Text('Sana', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),),
                  
                  const DataCell(Text('Jail Chowrangi')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('05')),
                  DataCell(
                                        TextButton(
                    
                                            onPressed: () {
                    
                                              launch('tel:03221234567 ');
                    
                                            },
                    
                                            child: const Text('Usman', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),),
                  const DataCell(
                      Text('Gulshan E Maymar')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('06')),
                  DataCell(
                    Column(
                      children: [
TextButton(
                        onPressed: () {
                          launch('tel:03111111111 ');
                        },
                        child: const Text('Gohar', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),
                      ],
                    ),
                  ),
                  const DataCell(Text('North Karachi')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('07')),
                  DataCell(                  TextButton(
                  
                                          onPressed: () {
                  
                                            launch('tel:03334444444 ');
                  
                                          },
                  
                                          child: const Text('Bilal', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),),
                  const DataCell(Text('North Nazimabad')), // Sample routes in Karachi
                ]),
                DataRow(cells: [
                  const DataCell(Text('08')),
                  DataCell(
                                        TextButton(
                    
                                            onPressed: () {
                    
                                              launch('tel:03265555555 ');
                    
                                            },
                    
                                            child: const Text('Haris', style: TextStyle( color: const Color.fromRGBO(23, 63, 88, 1.0),
fontWeight: FontWeight.bold),),
                  ),),
                  const DataCell(Text('Steel Town')), // Sample routes in Karachi
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
