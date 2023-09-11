
import 'package:flutter/material.dart';

class _feescard extends StatelessWidget {
  _feescard(
      {required this.datepaid, required this.month, required this.transitionID});
  final String month;
  final String datepaid;
    final String transitionID ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              month,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("date paid :"),
                Text(
                  datepaid,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Id:"),
                Text(
                  transitionID,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],)
          ],
        ),
      ),
    );
  }
}
