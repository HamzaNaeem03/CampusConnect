import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class unpaidfees extends StatelessWidget {
   unpaidfees({super.key});
  final List<_unpaidfeescard> cards = [
_unpaidfeescard(
      month: 'September',
      duedate: '15/09',
      amountDD: '7500',
      amount: '7000',
    ),

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

class _unpaidfeescard extends StatelessWidget {
  _unpaidfeescard(
      {required this.duedate,
      required this.month,
      required this.amountDD,
      required this.amount});
  final String month;
  final String duedate;
  final String amountDD;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
        ),
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
            Container(
              height: 1,
              color: Colors.red,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Due date:",
                    style: GoogleFonts.figtree(
                                            fontSize: 12,

                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    )),
                Text(
                  duedate,
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
                Text("Amount:",
                    style: GoogleFonts.figtree(
                                            fontSize: 12,

                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    )),
                Text(
                  amount,
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
                Text("After due:",
                    style: GoogleFonts.figtree(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(23, 63, 88, 1.0),
                    )),
                Text(
                  amountDD,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
