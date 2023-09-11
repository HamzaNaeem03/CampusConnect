import 'package:campus_connect/widgets/appbar.dart';
import 'package:campus_connect/widgets/assignmentcard.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import '../widgets/drawer.dart';

class Assignments extends StatefulWidget {
  const Assignments({super.key});

  @override
  State<Assignments> createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
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
          height: 200,
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
              Divider(
                thickness: 2,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  'Mark as done',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          )),
        );
      },
    );
  }

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
          screentitle: 'Assignment',
        ),
      ),

      drawer: const MyDrawer(),
      // bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AssignmentCard(
                  icon: Image.asset('lib/assets/icons/computer.png'),
                  subject: "Computer",
                  deadlinedate: "20-Aug",
                  details: "submit lab file along with the final assignment"),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/dna.png'),
                subject: "Biology",
                deadlinedate: "15-Sep",
                details: "Complete the chapter on cell biology",
              ),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/calculating.png'),
                subject: "Mathematics",
                deadlinedate: "20-Sep",
                details: "Solve the calculus problems from the textbook",
              ),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/chemistry.png'),
                subject: "Chemistry",
                deadlinedate: "25-Sep",
                details: "Perform the chemical experiments in the lab",
              ),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/atom.png'),
                subject: "Physics",
                deadlinedate: "18-Sep",
                details: "Study and review electromagnetism concepts",
              ),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/paint-palette.png'),
                subject: "Art",
                deadlinedate: "12-Oct",
                details: "Create a painting inspired by nature",
              ),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/computer.png'),
                subject: "Computer",
                deadlinedate: "30-Sep",
                details: "Write a program for data analysis",
              ),
              AssignmentCard(
                icon: Image.asset('lib/assets/icons/eng.png'),
                subject: "English",
                deadlinedate: "22-Sep",
                details: "Write a short essay on your favorite book",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   Widget _buildAssignmentCard(
//     Image icon,
//     String subject,
//     String deadlinedate,
//     String details,
//   ) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: InkWell(
//         child: Card(
//           elevation: 4,
//           shape: RoundedRectangleBorder(
//             side: BorderSide.none,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: ListTile(
//             leading: (SizedBox(height: 36, child: icon)),
//             title: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   subject,
//                   style: Theme.of(context).textTheme.displayMedium,
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Due On :",
//                       style: Theme.of(context).textTheme.displaySmall,
//                     ),
//                     Text(
//                       deadlinedate,
//                       style: Theme.of(context).textTheme.titleSmall,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//               ],
//             ),
//             subtitle: Column(
//               children: [
//                 Text(
//                   details,
//                   style: Theme.of(context).textTheme.titleSmall,
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 )
//               ],
//             ),
//           ),
//         ),
//         onTap: () {
//           showRoundedBottomSheet(context);
//         },
//       ),
//     );
//   }
// }
