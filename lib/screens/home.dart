import 'package:fitmio/configs/hex_color.dart';
import 'package:fitmio/screens/new_workout.dart';
import 'package:fitmio/widgets/no_workout_created.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var textSize = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return MaterialApp(
          theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
          //  theme: AppTheme.darkTheme,

          home: DefaultTabController(
            length: 4,
            child: new Scaffold(
              body: TabBarView(
                children: [
                  NoWorkout(),
                  NewWorkout(),
                  NewWorkout(),
                  NewWorkout(),
                ],
              ),
              bottomNavigationBar: Container(
                height: screenHeight * 0.087,
                child: new TabBar(
                  tabs: [
                    Container(
                      margin: EdgeInsets.only(left: screenWidth * 0.024),
                      alignment: Alignment.centerLeft,
                      child: Tab(
                        icon: new Icon(Icons.home, size: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerLeft,
                      child: Tab(
                        icon: new Icon(
                          Icons.schedule,
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Tab(
                        icon: new Icon(
                          Icons.bubble_chart,
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 0.024 * screenWidth),
                      child: Tab(
                        icon: new Icon(
                          Icons.person_outline,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                  labelColor: Color.fromRGBO(90, 57, 232, 1),
                  unselectedLabelColor: Color.fromRGBO(211, 208, 216, 1),
                  indicatorSize: TabBarIndicatorSize.label,
                  // indicatorPadding: EdgeInsets.all(5.0),
                  indicatorColor: Colors.transparent,
                ),
              ),
              backgroundColor: Colors.white,
              floatingActionButton: Container(
                height: 0.088 * screenHeight,
                width: 0.146 * screenWidth,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.85),
                child: FloatingActionButton(
                  onPressed: () {},
                  elevation: 8,
                  backgroundColor: HexColor('#5a39e8'),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerTop,
            ),
          ),
        );
      });
    });
  }
}
