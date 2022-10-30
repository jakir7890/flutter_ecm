import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "This is First Scren",
                  style: GoogleFonts.nunito(fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'second-scrn');
                  },
                  child: Text('Goto SecondPage'))
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.play_arrow,
                color: Colors.amber,
              ),
              Text('Second page'),
              Icon(
                Icons.play_arrow,
                color: Colors.amber,
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '😂This is Second Page😊',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'first-scrn');
                  },
                  child: Text('Go Back First Screen'))
              ,ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'nav-screen');
                  },
                  child: Text('Go Back Main Screen'))
            ],
          ),
        ),
      ),
    );
  }
}
