import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/util/themes/custommaterialcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    // super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Material(
        child: Padding(
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
                  controller: emailController,
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
                  controller: passwordController,
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
                    child: const Text("continue",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.pushNamed(context, "/Profile");
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
