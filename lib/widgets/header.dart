import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightMultiplier = MediaQuery.of(context).size.height / 100;
    
    return Stack(
      children: [
        Container(
          height: 390.0,
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            color: Color.fromRGBO(90, 57, 232, 1),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 35, top: 50),
          child: Text(
            'Hello, Thomas!',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 2.5 * heightMultiplier,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
