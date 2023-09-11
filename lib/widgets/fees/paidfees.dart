import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class paidfees extends StatelessWidget {
   paidfees({super.key});

  final List<_feescard> cards = [
    
    const _feescard(
      month: 'August',
      datepaid: '20/08',
      transitionID: '825735',
            amount: '7500',

    ),const _feescard(
      month: 'July',
      datepaid: '04/07',
      transitionID: '296598',
            amount: '7000',

    ),const _feescard(
      month: 'June',
      datepaid: '02/06',
      transitionID: '848754',
            amount: '7000',

    ),const _feescard(
      month: 'May',
      datepaid: '05/05',
      transitionID: '764982',
            amount: '7000',

    ),const _feescard(
      month: 'April',
      datepaid: '02/04',
      transitionID: '936458',
            amount: '9000',

    ),const _feescard(
      month: 'March',
      datepaid: '10/03',
      transitionID: '789012',
            amount: '7000',

    ),
    const _feescard(
      month: 'February',
      datepaid: '05/02',
      transitionID: '345365',
            amount: '7000',

    ),
    const _feescard(
      month: 'January',
      datepaid: '25/01',
      transitionID: '334574',
      amount: '7500',
    ),
    // Add more _feescard items here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 8, left: 8),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two cards per row
        ),
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return cards[index];
        },
      ),
    );
  }
}


class _feescard extends StatelessWidget {
  const _feescard(
      {required this.datepaid, required this.month, required this.transitionID, required this.amount});
  final String month;
  final String datepaid;
    final String transitionID ;
    final String amount ;

  @override
  Widget build(BuildContext context) {
    return Padding(
padding: const EdgeInsets.only(left: 8,right: 8,bottom: 12),   
      child: Container(
        decoration: BoxDecoration(
           color:Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
padding: const EdgeInsets.only(left: 8,right: 8,),   
        height: 25,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              month,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Container(height: 1,color: Colors.green,),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Date paid:",  style: GoogleFonts.figtree(                      fontSize: 12,

        fontWeight: FontWeight.bold,
        color:  const Color.fromRGBO(23, 63, 88, 1.0),
                )),
                Text(
                  datepaid,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID:", style: GoogleFonts.figtree(
                                        fontSize: 12,

        fontWeight: FontWeight.bold,
        color:  const Color.fromRGBO(23, 63, 88, 1.0),
                )),
                Text(
                  transitionID,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],),
              const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Amount:",  style: GoogleFonts.figtree(
        fontWeight: FontWeight.bold,                      fontSize: 12,

        color:  const Color.fromRGBO(23, 63, 88, 1.0),
                )),
                Text(
                  amount,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],)
              
          ],
        ),
      ),
    );
  }
}
