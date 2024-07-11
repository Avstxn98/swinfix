import 'package:flutter/material.dart';

class Crm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Crb();
  }
}

class Crb extends StatefulWidget {
  @override
  _CrbState createState() => _CrbState();
}

class _CrbState extends State<Crb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text('Credits',style: TextStyle(color: Colors.black)),
          shadowColor: Colors.grey,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45)),
        
          
        ),
      body: Column(
        children: [
          Text(
            'Case Created by StoneHub from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ),
          Text(
            'Component Created by Adrien Coquet from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Motherboard Created by Ben Davis from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ),
          Text(
            'Database Created by Bartama Graphic from Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Customer Created by Shashank Singh from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Customer Created by Yandi Kiem Lie from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Hard Disk Created by Iconmu from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Motherboard Created by Ben Davis from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'People Created by Mega Agustina from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Power Supply Created by Endang Firmansyah from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Processor Created by Iconmu from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'RAM Created by Bryn Bodayle from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ), Text(
            'Video Card Created by Lastspark from The Noun Project',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Merienda', fontSize: 15),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
