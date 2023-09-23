import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class AssignmentCard extends StatefulWidget {
  final Image icon;
  final String subject;
  final String deadlinedate;
  final String details;
  final VoidCallback? onMarkAsDone; // Add this callback

  AssignmentCard({
    required this.icon,
    required this.subject,
    required this.deadlinedate,
    required this.details,
        this.onMarkAsDone,

  });

  @override
  _AssignmentCardState createState() => _AssignmentCardState();
}

class _AssignmentCardState extends State<AssignmentCard> {
  Color cardColor = Colors.white; // Initial card color
  final GlobalKey<_AssignmentCardState> cardKey = GlobalKey();

  void _pickFile() async {
    // opens storage to pick files and the picked file or files
    // are assigned into result and if no file is chosen result is null.
    // you can also toggle "allowMultiple" true or false depending on your need
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);

    // if no file is picked
    if (result == null) return;

    // we get the file from result object
    final file = result.files.first;

    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  changeCardColor() {
    setState(() {
      // Change the card color to a different color when "Mark as done" is pressed
      cardColor = Colors.grey; // Change this to your desired color
    });
  }

  void showRoundedBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0), // Adjust the radius as needed
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 100,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (() {
                  _pickFile();
                }),
                child: Text(
                  'Submit your work',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              // Divider(
              //   thickness: 2,
              // ),
              // TextButton(
                
              //                    onPressed: () {
              //     cardKey.currentState?.changeCardColor(); // Access the state
              //   },

                
              //   child: Text(
              //     'Mark as done',
              //     style: Theme.of(context).textTheme.displaySmall,
              //   ),
              // ),
            ],
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        child: Card(
          color: cardColor, // Set the card color here

          elevation: 4,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: SizedBox(height: 36, child: widget.icon),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.subject,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Due On :",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      widget.deadlinedate,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
              ],
            ),
            subtitle: Column(
              children: [
                Text(
                  widget.details,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
        onTap: () {
          showRoundedBottomSheet(context);
        },
      ),
    );
  }
}
