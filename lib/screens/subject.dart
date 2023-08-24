// import 'package:flutter/material.dart';

// import '../widgets/bottonnavbar.dart';
// import '../widgets/drawer.dart';

// class Subject extends StatelessWidget {
//   const Subject({super.key});
  


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         title: Center(
//             child: Text(
//           "Subjects",
//           style: const TextStyle(
//               fontSize: 20, color: Colors.white, letterSpacing: 0.4),
//         )),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.notifications_sharp,
//             ),
//             onPressed: () {
//               // do something
//             },
//           )
//         ],
//       ),
//       drawer: MyDrawer(
//         accountName: 'hamza',
//         accountEmail: 'hamza04032003',
//       ),
//       bottomNavigationBar: BottomNavBar(),
//       body: Container(
//         margin: EdgeInsets.all(8),
//         child: Column(
//           children: [
//             ListView(
//               children: [
//                 _subjectitem()
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _subjectitem(
//     Image icon,
//     String subject,
//     String teachername,

//   ) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: ListTile(
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               subject,
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             SizedBox(height: 4,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
                
//                 Text("Teacher :"),
//                 Text(
//                   teachername,
//                   style: Theme.of(context).textTheme.titleSmall,
//                 ),
//               ],
//             ),
//                         SizedBox(height: 4,),

//           ],
//         ),
      
//       ),
//     );
//   }
// }
