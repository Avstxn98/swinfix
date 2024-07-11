
import 'package:flutter/material.dart';
import 'auth.dart';
import 'homepage.dart';
class LoginMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Loginbody();
  }
}

class Loginbody extends StatefulWidget {
  @override
  _LoginbodyState createState() => _LoginbodyState();
}

class _LoginbodyState extends State<Loginbody> {
  
  void click(){
  
  signInWithGoogle().then((user) { 
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => SwinfixPage(name)));
  });
  }

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
               OutlineButton(
      splashColor: Colors.grey,
      onPressed: this.click,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.tealAccent[400]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
              ),
            )
          ],
        ),
      ),
    ),
               
            ],
          ),
        ),
      ),
    );
  }
 
}

