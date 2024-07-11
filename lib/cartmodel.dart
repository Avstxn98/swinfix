
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyCart1 extends ChangeNotifier {
  
  
  List<Product> products = [];

  List<Map<dynamic,dynamic>> toJson(List<Product> products){
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
        'title': product.itemname,
        'type': product.ptype
      };
    }).toList();
   }

  add(k,item) {
   
    products.add(new Product(k, item));
    notifyListeners();
  }
   removeAt( item){
    products.remove(item);
    //products.clear();
    
    notifyListeners();
  }

  addn(x,name){
    products.add(new Product(x, name));
    
  }
  
}


class Product{
 
  
  DatabaseReference buyername;
  String itemname;
  String ptype;
  Product(this.ptype, this.itemname);
  

  void setid(DatabaseReference id){
    this.buyername = id;
  }
  

}
   
  
