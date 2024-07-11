import 'dart:ui';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swinfix/append.dart';
import 'package:swinfix/creditspage.dart';
import 'package:swinfix/database.dart';
import 'package:swinfix/editpage.dart';
import 'package:swinfix/foreditpage.dart';
import 'package:swinfix/loginpage.dart';
import 'auth.dart';
import 'cartmodel.dart';

class ArchiveMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArchiveBody();
  }
}

class ArchiveBody extends StatefulWidget {
  @override
  _ArchiveBodyState createState() => _ArchiveBodyState();
}

class _ArchiveBodyState extends State<ArchiveBody> {
 
  @override
  Widget build(BuildContext context) {
    final subtract = Provider.of<MyCart1>(context);
     Future<List<Product>> getallprods1() async {
                DataSnapshot dataSnapshot = await databaseReference
                    .child('configs/')
                    .child(names35[0])
                    .once();
                if (dataSnapshot.value != null) {
                  dataSnapshot.value.forEach((key, value) {
                    value.forEach((val) {
                      return subtract.addn(val['part'], val['name']);
                    });
                  });
                }
                return subtract.products;
              }
              Future<List<Product>> getallprods2() async {
                DataSnapshot dataSnapshot = await databaseReference
                    .child('configs/')
                    .child(names35[1])
                    .once();
                if (dataSnapshot.value != null) {
                  dataSnapshot.value.forEach((key, value) {
                    value.forEach((val) {
                      return subtract.addn(val['part'], val['name']);
                    });
                  });
                }
                return subtract.products;
              }
              Future<List<Product>> getallprods3() async {
                DataSnapshot dataSnapshot = await databaseReference
                    .child('configs/')
                    .child(names35[2])
                    .once();
                if (dataSnapshot.value != null) {
                  dataSnapshot.value.forEach((key, value) {
                    value.forEach((val) {
                      return subtract.addn(val['part'], val['name']);
                    });
                  });
                }
                return subtract.products;
              }
              Future<List<Product>> getallprods4() async {
                DataSnapshot dataSnapshot = await databaseReference
                    .child('configs/')
                    .child(names35[3])
                    .once();
                if (dataSnapshot.value != null) {
                  dataSnapshot.value.forEach((key, value) {
                    value.forEach((val) {
                      return subtract.addn(val['part'], val['name']);
                    });
                  });
                }
                return subtract.products;
              }
              Future<List<Product>> getallprods5() async {
                DataSnapshot dataSnapshot = await databaseReference
                    .child('configs/')
                    .child(names35[4])
                    .once();
                if (dataSnapshot.value != null) {
                  dataSnapshot.value.forEach((key, value) {
                    value.forEach((val) {
                      return subtract.addn(val['part'], val['name']);
                    });
                  });
                }
                return subtract.products;
              }

  

    return Scaffold(

      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(children: [
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: Container(
                child: Text(
                  'Control your data $name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Merienda',
                  ),
                ),
              )),
              Container(
                child: Center(
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                        child: IconButton(
                          icon: Image(
                            image: NetworkImage(imageUrl),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    _xout(context));
                          },
                        ),
                        backgroundImage: NetworkImage(imageUrl)),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () async {
                    await getallBuyers();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditMain()));
                  },
                  child: Center(
                      child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          height: 380,
                          child: Center(
                              child:  Column(children: [Center(
                                    child: Image(image: AssetImage('assets/noun_database_3780095.png'))),Text(
                                  'Edit Database',
                                  textAlign: TextAlign.center,
                                )])),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                  )),
                )),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppendMain()));
                        },
                        child: Card(
                          color: Colors.tealAccent[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                height: 380,
                                child: Column(children: [Center(
                                    child: Image(image: AssetImage('assets/noun_component_3120666.png'))),Text(
                                  'Add components',
                                  textAlign: TextAlign.center,
                                )],),
                                padding: EdgeInsets.all(20),
                              )
                            ],
                          ),
                        )))
              ],
            ),
          ),Container(height: 30,),Row(
            children: [
              Expanded(
                  child: Container(
                      child: Text(
                'Recents',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontFamily: 'Merienda',
                ),
              )))
            ],
          ),
          /*
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                  child: Card(
                    child: Container(
                        height: 190,
                        padding: EdgeInsets.all(60),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Center(
                                child: Text(
                              '',
                              textAlign: TextAlign.center,
                            )),
                          ],
                        )),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                )),
                Expanded(
                    child: Center(
                  child: Card(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          height: 190,
                          child: Center(
                              child: Text(
                            'hello',
                            textAlign: TextAlign.center,
                          )),
                          padding: EdgeInsets.all(60),
                        )
                      ],
                    ),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                )),
              ],
            ),
          ),
          */

          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: ()async {await getallprods1(); Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainM()));},
                              icon: Image(
                                image: AssetImage(
                                    'assets/noun_customer_2837125.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        (names35.asMap()[0]==null)?'':names35[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Merienda',
                        ),
                      )
                    ])),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.tealAccent[100],
                            child: IconButton(
                              onPressed: ()async {await getallprods2(); Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainM()));},
                              icon: Image(
                                image: AssetImage(
                                    'assets/noun_people_3111852.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        (names35.asMap()[1]==null)?'':names35[1],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Merienda',
                        ),
                      )
                    ])),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () async {await getallprods3(); Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainM()));},
                              icon: Image(
                                image: AssetImage(
                                    'assets/noun_customer_2837125.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                       (names35.asMap()[2]==null)?'':names35[2],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Merienda',
                        ),
                      )
                    ])),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.tealAccent[100],
                            child: IconButton(
                              onPressed: ()async{await getallprods4(); Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainM()));},
                              icon: Image(
                                image: AssetImage(
                                    'assets/noun_customer_2837125.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        (names35.asMap()[3]==null)?'':names35[3],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Merienda',
                        ),
                      )
                    ])),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Column(children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: ()async {await getallprods5(); Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainM()));},
                              icon: Image(
                                image: AssetImage(
                                    'assets/noun_customer_3418891.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        (names35.asMap()[4]==null)?'':names35[4],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Merienda',
                        ),
                      )
                    ])),
              )
            ],
          )),
          
        ]),
      ),
    );
  }
}

Widget _xout(BuildContext context) {
  return SimpleDialog(children: [
    SimpleDialogOption(
      child: Text('Sign Out?'),
      onPressed: () async{
        await signOutGoogle();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginMain()));
      },
    ),SimpleDialogOption(
      child: Text('Credits'),
      onPressed: () {
        
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Crm()));
      },
    ),
  ]);
}
