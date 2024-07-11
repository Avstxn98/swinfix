import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swinfix/builderlist.dart';
import 'cartmodel.dart';
import 'database.dart';
import 'cpu.dart';
import 'gpu.dart';
import 'ram.dart';
import 'psu.dart';
import 'storage.dart';
import 'motherboard.dart';
import 'case.dart';
import 'cooler.dart';
import 'auth.dart';
import 'filegetter.dart';
import 'editpage.dart';

class MainM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BodyM();
  }
}

class BodyM extends StatefulWidget {
  // final Function(String) callb;
  //Body(this.callb);

  @override
  _BodyMState createState() => _BodyMState();
}

class _BodyMState extends State<BodyM> {
  @override
  @override
  Widget build(BuildContext context) {
    final name = Provider.of<MyCart1>(context);
    press() {
      name.products.clear();
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(CupertinoIcons.share),
                onPressed: () async {await
                  FileUtile.saveTOfile(name.products);
                  FileUtile.sharethefile();
                })
          ],
          leading: IconButton(
            color: Colors.black,
            icon: Icon(CupertinoIcons.back),
            onPressed: () {
              press();
            },
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.tealAccent,
          title: Text(
            'Configure',
            style: TextStyle(color: Colors.black),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        children: <Widget>[
          Container(
            color: Colors.grey[800],
            child: DrawerHeader(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.only(bottom: 0),
              curve: Curves.bounceInOut,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('assets/sauron upscale.png'),
                    fit: BoxFit.cover),
                color: Colors.grey[800],
              ),
              child: Center(
                child: SizedBox(
                  width: 65.0,
                  height: 65.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.grey[800]),
              //color: Colors.grey,
              child: Column(children: <Widget>[
                ListTile(
                  leading:
                      Icon(Icons.calculate_rounded, color: Colors.tealAccent),
                  title: Text('CPU'),
                  onTap: () {
                    Navigator.pop(context);

                    // change app state...

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CpuMain())); // close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.gamepad_rounded,
                    color: Colors.blueAccent[700],
                  ),
                  title: Text('GPU'),
                  onTap: () {
                    // change app state...

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GPUmain())); // close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.confirmation_num_rounded,
                      color: Colors.greenAccent),
                  title: Text('RAM'),
                  onTap: () {
                    // change app state...

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RamMain())); // close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.battery_full_rounded,
                      color: Colors.orangeAccent),
                  title: Text('PSU'),
                  onTap: () {
                    // change app state...

                    Navigator.pop(context);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PsuMain())); // close the drawer
                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.computer_rounded, color: Colors.redAccent),
                  title: Text('Motherboard'),
                  onTap: () {
                    // change app state...

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MotherboardMain())); // close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.storage_rounded,
                      color: Colors.yellowAccent[700]),
                  title: Text('Cooler'),
                  onTap: () {
                    // change app state...[]

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CoolerMain())); // close the drawer
                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.storage_rounded, color: Colors.limeAccent),
                  title: Text('Storage'),
                  onTap: () {
                    // change app state...

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                StorageMain())); // close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.corporate_fare_rounded,
                      color: Colors.purpleAccent),
                  title: Text('Case'),
                  onTap: () {
                    // change app state...

                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CaseMain())); // close the drawer
                  },
                ),
              ]))
        ],
      )),
      body: Container(
          child: Column(
              children: <Widget>[Expanded(child: Builderlist()), Textin()])),
    );
  }
}

class Textin extends StatefulWidget {
  //final Function(String) callb;
  //Textin(this.callb);

  @override
  _TextinState createState() => _TextinState();
}

String l;
var controller = TextEditingController();

class _TextinState extends State<Textin> {
  String callb;
  String k;
  String m;

  int num = 0;

  void click() {
    FocusScope.of(context).unfocus();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final name = Provider.of<MyCart1>(context);
    return TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent)),
            prefixIcon: IconButton(
                icon: Icon(
                  CupertinoIcons.person,
                  color: Colors.tealAccent,
                ),
                onPressed: () {
                  try {
                    var x = int.parse(controller.text);
                    k = 'Budget';
                    name.add(k, '£ $x');
                    FocusScope.of(context).unfocus();
                    controller.clear();
                  } catch (error) {
                    m = 'Name';
                    name.add(m, controller.text);
                    FocusScope.of(context).unfocus();
                    controller.clear();
                  }
                }),
            suffixIcon: IconButton(
              icon: Icon(
                CupertinoIcons.add,
                color: Colors.tealAccent,
              ),
              onPressed: () async {
                
                callb;
               await FirebaseDatabase.instance.reference().child('configs').child(ide).remove();
                FocusScope.of(context).unfocus();
             save(name.products);
             controller.clear();
             name.products.clear();
              },
            )));
  }
}
