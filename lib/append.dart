import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cpu.dart';
import 'gpu.dart';
import 'ram.dart';
import 'psu.dart';
import 'storage.dart';
import 'motherboard.dart';
import 'case.dart';
import 'cooler.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';

class AppendMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppendBody();
  }
}

class AppendBody extends StatefulWidget {
  @override
  _AppendBodyState createState() => _AppendBodyState();
}

class _AppendBodyState extends State<AppendBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.tealAccent,
          title: Text(
            'Add new parts ',
            style: TextStyle(color: Colors.black),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _cpubuild(context));
                    },
                    child: Card(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(width: 80,
                            height: 80,
                            child: Center(
                                child: Image(image: AssetImage('assets/noun_processor_2261601.png'),)),
                            padding: EdgeInsets.all(20),
                          )
                        ],
                      ),
                      color: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _gpubuild(context));
                    },
                  child: Card(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(width: 80,
                          height: 80,
                          child: Center(
                              child: Image(image: AssetImage('assets/noun_Video Card_404528.png'))),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    color: Colors.blueAccent[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                  child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _psubuild(context));
                    },
                    child: Card(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(width: 80,
                            height: 80,
                            child: Center(
                                child: Image(image: AssetImage('assets/noun_Power supply_2411032.png'))),
                            padding: EdgeInsets.all(20),
                          )
                        ],
                      ),
                      color: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _rambuild(context));
                    },
                  child: Card(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(width: 80,
                          height: 80,
                          child: Center(
                              child: Image(image: AssetImage('assets/noun_ram_32078.png'))),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                  child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _motherboardbuild(context));
                    },
                    child: Card(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(width: 80,
                            height: 80,
                            child: Center(
                                child: Image(image: AssetImage('assets/noun_Motherboard_150455.png'))),
                            padding: EdgeInsets.all(20),
                          )
                        ],
                      ),
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _coolerbuild(context));
                    },
                  child: Card(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(width: 80,
                          height: 80,
                          child: Center(
                              child: Image(image: AssetImage('assets/noun_cooler_150458.png'))),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    color: Colors.yellowAccent[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                        child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _storagebuild(context));
                    },
                  child: Card(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(width: 80,
                          height: 80,
                          child: Center(
                              child: Image(image: AssetImage('assets/noun_hard disk_2261597.png'))),
                          padding: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    color: Colors.limeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ))),
                Expanded(
                    child: GestureDetector( onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _casebuild(context));
                    },
                       
                        child: Card(
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(width: 80,
                                height: 80,
                                child: Center(
                                    child: Image(image: AssetImage('assets/noun_case_1102626.png'))),
                                padding: EdgeInsets.all(20),
                              )
                            ],
                          ),
                          color: Colors.purpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ))),
              ],
            ),
          ),Textin()
        ],
      ),
    );
  }
}
class Textin extends StatefulWidget {


  @override
  _TextinState createState() => _TextinState();
}

String l;
var controller = TextEditingController();

class _TextinState extends State<Textin> {
  String k;
  String m;

  int num = 0;

  
  /**void dispose() {
    
    controller.dispose();
    super.dispose();
  }
*/
  void click() {
  
    FocusScope.of(context).unfocus();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
   
    return TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent)),prefixIcon: Icon(CupertinoIcons.add_circled_solid,color: Colors.tealAccent,),)
            );
  }
}


Widget _cpubuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('Amd'),
        onPressed: () {amd.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      SimpleDialogOption(
        child: Text('Intel'),
        onPressed: () {intel.add(controller.text);controller.clear();Navigator.pop(context);
        },
      )
    ],
  );
}
Widget _gpubuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('Radeon'),
        onPressed: () {radeon.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      SimpleDialogOption(
        child: Text('Nvidia'),
        onPressed: () {nvidia.add(controller.text);controller.clear();Navigator.pop(context);
        },
      )
    ],
  );
}Widget _psubuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('Psu'),
        onPressed: () {psu.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      
    ],
  );
}Widget _rambuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('DDR3'),
        onPressed: () {ddr3.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      SimpleDialogOption(
        child: Text('DDR4'),
        onPressed: () {ddr4.add(controller.text);controller.clear();Navigator.pop(context);
        },
      )
    ],
  );
}Widget _motherboardbuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('Amd'),
        onPressed: () {amdmo.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      SimpleDialogOption(
        child: Text('Intel'),
        onPressed: () {intelmo.add(controller.text);controller.clear();Navigator.pop(context);
        },
      )
    ],
  );
}Widget _coolerbuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('Air'),
        onPressed: () {air.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      SimpleDialogOption(
        child: Text('Water'),
        onPressed: () {water.add(controller.text);controller.clear();Navigator.pop(context);
        },
      )
    ],
  );
}Widget _storagebuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('HDD'),
        onPressed: () {hdd.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
      SimpleDialogOption(
        child: Text('SSD'),
        onPressed: () {ssd.add(controller.text);controller.clear();Navigator.pop(context);
        },
      )
    ],
  );
}Widget _casebuild(BuildContext context) {
  return SimpleDialog(
    title: Text('Choose from the following'),
    children: [
      SimpleDialogOption(
        child: Text('Case'),
        onPressed: () {cases.add(controller.text);controller.clear();Navigator.pop(context);},
      ),
     
    ],
  );
}