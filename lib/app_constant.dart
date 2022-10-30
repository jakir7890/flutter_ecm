import 'package:flutter/material.dart';

const String fruitsImg = 'assets/images/04.png';

class CustomeBanner extends StatelessWidget {

  Color background;
  CustomeBanner({ this.background = const Color(0xff111111),  super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 200,
      height: 120,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '40% Off During\nCovid 19',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              fruitsImg,
              fit: BoxFit.cover,
              width: 150,
            ),
          )
        ],
      ),
    );
  }
}
