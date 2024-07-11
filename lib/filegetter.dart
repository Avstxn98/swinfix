import 'package:file_picker/file_picker.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'cartmodel.dart';


class FileUtile{
  static Future<String> get getFilepath async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> get getFile async{
    final path = await getFilepath;
    
    return File('$path/myfile.txt').create();

  }

  static Future<File> saveTOfile(List<Product> prod) async{
    final file = await getFile;
    String se = prod.map((e)  {return{e.ptype : e.itemname};}).join('\n');
     // var sink = file.openWrite();
  //sink.write(se);

  // Close the IOSink to free system resources.
  //sink.close();
   // prod.forEach((element) {return file.writeAsString('${element.ptype} : ${element.itemname}\n',mode: FileMode.append);});
   return file.writeAsString(se);
  }

   static sharethefile() async{
     final x = await getFilepath;
 final String filed =  '$x/myfile.txt';
 List<String> liesd = [];
 liesd.add(filed);
 Share.shareFiles(liesd);

  }

}


