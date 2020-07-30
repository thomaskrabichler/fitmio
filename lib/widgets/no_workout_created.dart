import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [  
        Container(
         // color: Colors.blue,
          margin: EdgeInsets.only(top: 160, left: 45, right: 45),
          child: Image(
            image: AssetImage('assets/images/back3.png'),
          ),
        ),
        Container(
          //color: Colors.orange,
          margin: EdgeInsets.only(top: 30),
          child: Text(
            'No workout created yet.',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(7, 4, 32, 1),
              ),
            ),
          ),
        ),
        Container(
          //color:Colors.green,
          margin: EdgeInsets.only(top: 20),
          child: Text(
            'click the big green button to get started.',
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(7, 4, 32, 1),
              ),
            ),
          ),
        ),
        // Container(
        //  // color: Colors.red,
        //   width: 260,
        //   height: 60,
        //   margin: EdgeInsets.only(top: 80),
        //   child: RaisedButton(
        //     onPressed: () {},
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(28.0),
        //     ),
        //     child: Text(
        //       'New workout routine',
        //       style: GoogleFonts.rubik(
        //         textStyle: TextStyle(fontSize: 20, color: Colors.white),
        //       ),
        //     ),
        //     color: Color.fromRGBO(10, 227, 180, 1),
        //   ),
        // ),
      ],
    );
  }
}
