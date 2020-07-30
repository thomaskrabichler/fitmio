import 'package:flutter/material.dart';

import '../configs/hex_color.dart';
import '../widgets/no_workout_created.dart';
import '../screens/new_workout.dart';
import '../widgets/header.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var heightMultiplier = MediaQuery.of(context).size.height / 100;
    var widthMultiplier = MediaQuery.of(context).size.width / 100;

    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return MaterialApp(
          home: DefaultTabController(
            length: 4,
            child: new Scaffold(
              backgroundColor: Colors.white,
              body: TabBarView(
                children: [
                  NoWorkout(),
                  Header(),
                  NewWorkout(),
                  NewWorkout(),
                ],
              ),
              bottomNavigationBar: Container(
                height: 8.2 * heightMultiplier,
                // color: Color.fromRGBO(248, 191, 247, 1),
                child: new TabBar(
                  tabs: [
                    Container(
                      margin: EdgeInsets.only(left: 2.42 * widthMultiplier),
                      alignment: Alignment.centerLeft,
                      child: Tab(
                        icon:
                            new Icon(Icons.home, size: 3.11 * heightMultiplier),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 2.55 * widthMultiplier),
                      alignment: Alignment.centerLeft,
                      child: Tab(
                        icon: new Icon(
                          Icons.schedule,
                          size: 3.11 * heightMultiplier,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Tab(
                        icon: new Icon(
                          Icons.bubble_chart,
                          size: 3.11 * heightMultiplier,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 2.4 * widthMultiplier),
                      child: Tab(
                        icon: new Icon(
                          Icons.person_outline,
                          size: 3.11 * heightMultiplier,
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
              floatingActionButton: Container(
                height: 8.8 * heightMultiplier,
                width: 14.6 * widthMultiplier,
                margin: EdgeInsets.only(top: 86.0 * heightMultiplier),
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
