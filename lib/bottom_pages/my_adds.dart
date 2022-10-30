import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Value is Empty';
                    } else if (value.length < 6) {
                      return 'Enter your full E-mail';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Your E-mail W',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 3,
                          ))),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    } else if (value.length < 6) {
                      return 'Give a 6 caracter password';
                    } else {
                      return null;
                    }
                  },
                  controller: passwordController,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 3,
                          ))),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        return print('Login Completed');
                      } else {
                        print('Failed');
                      }
                    },
                    child: Text(
                      "Enter W",
                      style: GoogleFonts.raleway(
                          fontSize: 20, fontWeight: FontWeight.w900),
                    )),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
