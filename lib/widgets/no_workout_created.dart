import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../configs/size_config.dart';

class NoWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var textSize = MediaQuery.of(context).size.height;

  

  

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: screenHeight * 0.34,
              left: screenWidth * 0.14,
              right: screenWidth * 0.14),
          child: Image(
            image: AssetImage('assets/images/back3.png'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: screenHeight * 0.025),
          child: Text(
            'No workout created yet.',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize * 0.033,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(7, 4, 32, 1),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: screenHeight * 0.023),
          child: Text(
            'click the big button below to get started.',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize * 0.018,
                color: Color.fromRGBO(7, 4, 32, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
