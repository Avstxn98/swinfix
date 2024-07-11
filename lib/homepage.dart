import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'archivepage.dart';
import 'homepselection.dart';
import 'buildpc.dart';
import 'database.dart';

class SwinfixPage extends StatelessWidget {
  SwinfixPage(user);
  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Welcome',
    );
  }
}

class Body extends StatefulWidget {
  Body({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[Newslist(), ArchiveMain(), Main()];

  void _onItemTapped(int index) {
    setState(() {
      //getallBuyers4();
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
     
        Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(selectedFontSize: 0,type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news_solid),label: ''
            
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(CupertinoIcons.archivebox_fill),label: ''
            
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.wrench_fill),label: ''
            
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.tealAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}


