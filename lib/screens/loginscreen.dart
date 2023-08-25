import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/util/themes/custommaterialcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
 try {
      String email = _emailController.text;
      String password = _passwordController.text;

      if (email.isEmpty || password.isEmpty) {
        // Handle empty fields
        return;
      }

    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Authentication successful, userCredential.user now contains user information
    print("User ID: ${userCredential.user?.uid}");

    if (userCredential.user != null) {
      Navigator.pushNamed(context, '/Profile');
    }
  } catch (e) {
    // Handle authentication errors
    print("Error: $e");
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 28, horizontal: 40),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset('lib/assets/images/ccLogoNoBG.png'),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                  filled: false,
                  fillColor: Colors.white,
                  labelText: "Email",
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  filled: false,
                  fillColor: Colors.white,
                  labelText: "Password",
                  hintText: "Enter password",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  } else if (value.length < 6) {
                    return "minimum password length should be 6 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: colorCustom),
                  child:
                      Text("continue",
                          style: TextStyle(color: Colors.white)),
                  onPressed: signInWithEmailAndPassword,
             ),
            ],
          ),
        ),
      ),
    );
  }
}
