import 'package:fitmio/configs/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'header.dart';

class NoWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightMultiplier = MediaQuery.of(context).size.height / 100;
    var widthMultiplier = MediaQuery.of(context).size.width / 100;
    var textMultiplier = MediaQuery.of(context).size.height / 100;

    print(MediaQuery.of(context).size.width / 100);
    print(MediaQuery.of(context).size.height / 100);

    return Column(
      children: [
        Stack(
          children: [
            Header(),
            Container(
              height: 40,
              margin: EdgeInsets.only(top: 380),
              width: double.infinity,
              color: Color.fromRGBO(90, 57, 232, 1),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
                child: Container(
                  //     margin: EdgeInsets.only(bottom: 4),
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 18.8 * heightMultiplier,
                left: 13.0 * widthMultiplier,
                right: 13.0 * widthMultiplier,
              ),
              child: Image(
                image: AssetImage('assets/images/header4.png'),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            top: 2.3 * heightMultiplier,
          ),
          child: Text(
            'No workout created yet.',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 3.11 * textMultiplier,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(47, 46, 65, 1),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1.5 * heightMultiplier, bottom: 20),
          child: Text(
            'click the big button below to get started.',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 1.74 * textMultiplier,
                color: Color.fromRGBO(47, 46, 65, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
