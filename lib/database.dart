import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'cartmodel.dart';
import 'buildpc.dart';
import 'package:provider/provider.dart';

final databaseReference = FirebaseDatabase.instance.reference();
 
 List<Map<String,dynamic>> toJson(List<Product> products){
   
    // final result = [];

    // for (int i = 0; i< products.length; i++) {
    //   final product = products[i];

    //   result.add({
    //     'title': product.itemname,
    //     'type': product.ptype
    //   });
    // }

    return products.map((product) {
      return {
        'part': product.ptype,
        'name': product.itemname
         
      };
    }).toList();
   }
DatabaseReference save(List<Product> post) {
  var info = databaseReference.child('configs/').child(controller.text).push();
  info.set(toJson(post));
  return info;
}
List<String> names = [];
Future<List<String>> getallBuyers() async {
  DataSnapshot dataSnapshot = await databaseReference.child('configs/').once();
  
  if (dataSnapshot.value != null) {
    dataSnapshot.value.forEach((key, value) {
      return {
        names.add(key),

        
      };
    });
  }
  
  
}

List<String> names34 = [];

List<String> names35 = names34.toSet().toList();
Future<List<String>> getallBuyers4() async {
  DataSnapshot dataSnapshot = await databaseReference.child('configs/').once();
  
  if (dataSnapshot.value != null) {
    dataSnapshot.value.forEach((key, value) {
      return {
        names34.add(key),

        
      };
    });
  }
  
  
}
