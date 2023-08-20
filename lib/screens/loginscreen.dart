import 'package:flutter/material.dart';
import 'package:school_managment_app/screens/profile.dart';
import 'package:school_managment_app/util/themes/custommaterialcolor.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 28, horizontal: 40),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset('lib/assets/images/campusconnectLOGO.png'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  filled: false,
                  fillColor: Colors.white,
                  labelText: "Username",
                  hintText: "Enter username",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
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
                      const Text("continue", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, "/Profile");
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
