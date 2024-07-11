import 'package:flutter/material.dart';
import 'package:swinfix/cartmodel.dart';
import 'package:provider/provider.dart';

class Builderlist extends StatefulWidget {
  final List<Product> ite = [];

  @override
  _BuilderlistState createState() => _BuilderlistState();
}

class _BuilderlistState extends State<Builderlist> {
  @override
  Widget build(BuildContext context) {
    var name = Provider.of<MyCart1>(context);

    /**return ListView(
      children: name.products.map((value){
        return Dismissible(key: Key(value.toString()), child: ListTile(title: Text(),),
         onDismissed: (direction) {
            
              
              name.removeAt(value);

              
          },
         background: Container(color: Colors.red),);
      }
    ).toList());
    **/
    return ListView.separated(
      itemBuilder: (context, index) {
        var ide = name.products[index];
        return Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              name.removeAt(ide);
            },
            child: Card(
                shadowColor: Colors.tealAccent[100],
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  child: ListTile(
                    title: Text(ide.itemname),
                    subtitle: Text(ide.ptype),
                  ),
                )));
      },
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemCount: name.products.length,
    );
  }
}
