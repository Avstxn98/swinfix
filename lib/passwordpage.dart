import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swinfix/loginpage.dart';

class Lmain extends StatelessWidget {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: Center(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(),
            fillColor: Colors.grey,
            suffixIcon: IconButton(icon: Icon(CupertinoIcons.forward), onPressed: (){
if(controller.text == 'mauriceadjei944@gmail.com'){
  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginMain()));
}

            },),),
      ),
    ));
  }
}
