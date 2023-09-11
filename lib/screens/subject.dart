import 'package:campus_connect/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../widgets/drawer.dart';

class Subject extends StatelessWidget {
  const Subject({super.key});

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
screentitle: 'Subjects',
        ),
      ),
      
      drawer: const MyDrawer(
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _subjectitem(icon: Image.asset('lib/assets/icons/eng.png'), subject: 'English',
            teachername: 'Noor',
                      )
          ],
        ),
      ),
    );
  }
}

class _subjectitem extends StatelessWidget {
  _subjectitem(
      {required this.icon, required this.subject, required this.teachername});
  Image icon;
  final String subject;
  final String teachername;
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
        child: Row(
            children: [
              SizedBox(width: 36, height: 36, child: icon),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Teacher :"),
                      Text(
                        teachername,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ],
          ),
        
      ),
    );
  }
}
