import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../util/themes/custommaterialcolor.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  // FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Colors.white,
          const Color.fromARGB(255, 164, 219, 232),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 40),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 260, // Adjust this to the width you want
                  height: 260,
      
                  child: Image.asset('lib/assets/images/ccLogoNoBG.png',
                      fit: BoxFit.cover // Adjust the fit as needed
                      // Adjust the fit as needed
                      ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: const InputDecoration(
                                        labelStyle: TextStyle(color: const Color.fromRGBO(23, 63, 88, 1.0),),

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
                    labelStyle: TextStyle(color: const Color.fromRGBO(23, 63, 88, 1.0),),
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
                    child: const Text("continue",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        // Form is valid, you can proceed with login logic here
                        // For now, we'll just navigate to another screen
                        Navigator.pushNamed(context, "/Profile");
                      }
                      ;
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
