import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/contact.dart';
import './screens/work.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  List<Widget> screens = [
    Home(),
    Work(),
    Contact(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Csea ask',
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("CSEA"),
        ),
        body: screens[_currentIndex],
        bottomNavigationBar: Container(
          height: 60,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  backgroundColor: Colors.redAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.adjust),
                  title: Text("Work"),
                  backgroundColor: Colors.blueAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone),
                  title: Text("Contact us"),
                  backgroundColor: Colors.purple),
            ],
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            iconSize: 20,
            onTap: (index) {
              _currentIndex = index;
              setState(() {
                print(index);
              });
            },
            elevation: 30,
          ),
        ),
      ),
    );
  }
}
