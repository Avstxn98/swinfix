import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:provider/provider.dart';

import 'cartmodel.dart';
import 'database.dart';

import 'foreditpage.dart';

class EditMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EditBody();
  }
}

class EditBody extends StatefulWidget {
  @override
  _EditBodyState createState() => _EditBodyState();
}
String ide;
class _EditBodyState extends State<EditBody> {
  press() {
    names.clear();
    Navigator.pop(context);
    
  }

  @override
  Widget build(BuildContext context) {
    var add = Provider.of<MyCart1>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: () async {this.press();
            await getallBuyers4();},
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
      body: Column(
        children: <Widget>[
          ListView.separated(
            itemBuilder: (context, index) {
             ide = names[index];
              @override
              Future<List<Product>> getallprods() async {
                DataSnapshot dataSnapshot = await databaseReference
                    .child('configs/')
                    .child(names[index])
                    .once();
                if (dataSnapshot.value != null) {
                  dataSnapshot.value.forEach((key, value) {
                    value.forEach((val) {
                      return add.addn(val['part'], val['name']);
                    });
                  });
                }
                return add.products;
              }

              ;
              return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    names.remove(names[index]);
                  },
                  child: Card(
                      shadowColor: Colors.tealAccent[100],
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        child: ListTile(
                          title: Text(names[index]),
                          subtitle: Text(''),
                          onTap: () async {
                            await getallprods();
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainM()));
                          },
                        ),
                      )));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: names.length,
          )
        ],
      ),
    );
  }
}
