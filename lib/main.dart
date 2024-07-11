import 'package:flutter/material.dart';
import 'package:swinfix/passwordpage.dart';
import 'homepage.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';
import 'loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';
import 'database.dart';

void main() {
  runApp(Wrap());
  getallBuyers4();
}

class Wrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyCart1(),
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swinfix',
      theme: ThemeData(
       
        primarySwatch: Colors.teal,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AfterLayoutMixin<MyHomePage> {
   Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => LoginMain()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => Lmain()));
    }
  }
  
    @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(body: Center(child: CircularProgressIndicator(),),backgroundColor: Colors.black,);
  }
}
