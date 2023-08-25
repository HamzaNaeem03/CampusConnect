import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/screens/timetable.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              if (snapshot.hasData) {
                return ProfileScreen();
              } else {
                return Container();
              }
            }
          }),
    );
  }
}
// {
//   final FirebaseAuth _firebaseAuth = ;
//   User? get currentUser => _firebaseAuth.currentUser;
//   Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

//   Future<void> signinWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuth.signInWithEmailAndPassword(
//         email: email, password: password);
//   }

//   Future<void> createWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuth.createUserWithEmailAndPassword(
//         email: email, password: password);
//   }

//   Future<void> signout() async {
//     await _firebaseAuth.signOut();
//   }
// }
// void login() {
//     _auth.signInWithEmailAndPassword(
//             email: emailController.text.toString(),
//             password: passwordController.text.toString())
//         .then((value));
//   }