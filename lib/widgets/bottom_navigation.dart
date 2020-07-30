import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          //title: new Text(widget.title),
          ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.power, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Power'))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
