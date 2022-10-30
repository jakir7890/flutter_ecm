import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddScreen extends StatelessWidget {
// GlobalKey formKey =GlobalKey<>()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            //  key: ,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {},
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
                ElevatedButton(onPressed: () {}, child: Text("Enter W", style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w900),)),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
