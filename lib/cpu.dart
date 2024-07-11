import 'buildpc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';

class CpuMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CpuBody();
  }
}

class CpuBody extends StatefulWidget {
  @override
  _CpuBodyState createState() => _CpuBodyState();
}

class _CpuBodyState extends State<CpuBody> {
  List<String> _tabs = ['Intel', 'AMD'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.tealAccent[100],
          title: const Text('CPU', style: TextStyle(color: Colors.black)),
          shadowColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label, labelColor: Colors.black,
            // These are the widgets to put in each tab in the tab bar.
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            children: [Intel(), Amd()]),
      ),
    );
  }
}

class Amd extends StatefulWidget {
  @override
  _AmdState createState() => _AmdState();
}
 final List<String> amd = [
    'Ryzen 9 4900H',
    'Ryzen 3 1200',
    'Ryzen 3 Pro 1200',
    'Ryzen 3 Pro 1300',
    'Ryzen 3 1300X',
    'Ryzen 5 1400',
    'Ryzen 5 Pro 1500',
    'Ryzen 5 1500X',
    'Ryzen 5 1600',
    'Ryzen 5 Pro 1600',
    'Ryzen 5 1600X',
    'Ryzen 7 1700',
    'Ryzen 7 Pro 1700',
    'Ryzen 7 1700X',
    'Ryzen 7 1800X',
    'Ryzen Threadripper 1900X',
    'Ryzen Threadripper 1920X',
    'Ryzen Threadripper 1950X',
    'Ryzen 3 2200GE',
    'Ryzen 3 Pro 2200GE',
    'Ryzen 3 2200G',
    'Ryzen 3 Pro 2200G',
    'Ryzen 5 2400GE',
    'Ryzen 5 Pro 2400GE',
    'Ryzen 5 2400G',
    'Ryzen 5 Pro 2400G',
    'Ryzen 3 1200 AF(12nm Refresh)',
    'Ryzen 3 2300X',
    'Ryzen 5 2500X',
    'Ryzen 5 2600E',
    'Ryzen 5 1600 AF(12 nm refresh)',
    'Ryzen 5 2600',
    'Ryzen 5 2600X',
    'Ryzen 7 2700E',
    'Ryzen 7 2700',
    'Ryzen 7 Pro 2700',
    'Ryzen 7 Pro 2700X',
    'Ryzen 7 2700X',
    'Ryzen Threadripper 2920X',
    'Ryzen Threadripper 2950X',
    'Ryzen Threadripper 2970WX',
    'Ryzen Threadripper 2990WX',
    'Ryzen 3 3200GE',
    'Ryzen 3 Pro 3200GE',
    'Ryzen 3 3200G',
    'Ryzen 3 Pro 3200G',
    'Ryzen 5 Pro 3400GE',
    'Ryzen 5 3400G',
    'Ryzen 5 Pro 3400G',
    'Ryzen 3 3100',
    'Ryzen 3 3300X',
    'Ryzen 5 3500',
    'Ryzen 5 3500X',
    'Ryzen 5 3600',
    'Ryzen 5 Pro 3600',
    'Ryzen 5 3600X',
    'Ryzen 5 3600XT',
    'Ryzen 7 Pro 3700',
    'Ryzen 7 3700X',
    'Ryzen 7 3800X',
    'Ryzen 7 3800XT',
    'Ryzen 9 3900',
    'Ryzen 9 Pro 3900',
    'Ryzen 9 3900X',
    'Ryzen 9 3900XT',
    'Ryzen 9 3950X',
    'Ryzen Threadripper 3960X',
    'Ryzen Threadripper 3970X',
    'Ryzen Threadripper 3990X',
    'Ryzen Threadripper Pro 3945WX',
    'Ryzen Threadripper Pro 3955WX',
    'Ryzen Threadripper Pro 3975WX',
    'Ryzen Threadripper Pro 3995WX',
    'Ryzen 3 4300G',
    'Ryzen 5 4600G',
    'Ryzen 7 4700G',
    'Ryzen 3 4300GE',
    'Ryzen 5 4600GE',
    'Ryzen 7 4700GE',
    'Ryzen 3 2200U',
    'Ryzen 3 3200U',
    'Ryzen 3 2300U',
    'Ryzen 3 Pro 2300U',
    'Ryzen 5 2500U',
    'Ryzen 5 Pro 2500U',
    'Ryzen 5 2600H',
    'Ryzen 7 2700U',
    'Ryzen 7 Pro 2700U',
    'Ryzen 7 2800H',
    'Ryzen 3 3300U',
    'Ryzen 3 PRO 3300U',
    'Ryzen 5 3500U',
    'Ryzen 5 PRO 3500U',
    'Ryzen 5 3500C',
    'Ryzen 5 3550H',
    'Ryzen 5 3580U',
    'Ryzen 7 3700U',
    'Ryzen 7 PRO 3700U',
    'Ryzen 7 3700C',
    'Ryzen 7 3750H',
    'Ryzen 7 3780U',
    'Ryzen 3 4300U',
    'Ryzen 3 PRO 4450U',
    'Ryzen 5 4500U',
    'Ryzen 5 4600U',
    'Ryzen 5 PRO 4650U',
    'Ryzen 5 4600HS',
    'Ryzen 5 4600H',
    'Ryzen 7 4700U',
    'Ryzen 7 PRO 4750U',
    'Ryzen 7 4800U',
    'Ryzen 7 4800HS',
    'Ryzen 7 4800H',
    'Ryzen 9 4900HS',
    'Ryzen 9 4900H'
  ];
class _AmdState extends State<Amd> {
 

  @override
  Widget build(BuildContext context) {
    final id = Provider.of<MyCart1>(context);
    final String k = 'CPU';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () => {},
                  child: Card(
                    shadowColor: Colors.tealAccent[100],
                    color: Colors.tealAccent[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        child: ListTile(
                      onTap: () => {
                        id.add(k, amd[index]),
                        Navigator.pop(context),
                        //Navigator.push(context,
                           // MaterialPageRoute(builder: (context) => Main()))
                      },
                      title: Text(amd[index]),
                      subtitle: Text(k),
                    )),
                  ));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: amd.length));
  }
}

class Intel extends StatefulWidget {
  @override
  _IntelState createState() => _IntelState();
}
List<String> intel = [
    '3865U',
    '3965U',
    'N3350',
    'N3450',
    '4410Y',
    '4415Y',
    '4415U',
    'N4200',
    'm3-7Y30',
    'm3-7Y32',
    'i3-7100U',
    'i3-7130U',
    'i3-7167U',
    'i3-7100H',
    'i5-7Y54',
    'i5-7Y57',
    'i5-7200U',
    'i5-7260U',
    'i5-7267U',
    'i5-7287U',
    'i5-7300U',
    'i5-7360U',
    'i5-7300HQ',
    'i5-7440HQ',
    'i7-7Y75',
    'i7-7500U',
    'i7-7560U',
    'i7-7567U',
    'i7-7600U',
    'i7-7660U',
    'i7-7700HQ',
    'i7-7820HK',
    'i7-7820HQ',
    'i7-7920HQ',
    'G3930T',
    'G3930',
    'G3950',
    'G4560T',
    'G4560',
    'G4600T',
    'G4600',
    'G4620',
    'i3-7101TE',
    'i3-7101E',
    'i3-7100T',
    'i3-7100',
    'i3-7300T',
    'i3-7300',
    'i3-7320',
    'i3-7350K',
    'i5-7400T',
    'i5-7400',
    'i5-7500T',
    'i5-7500',
    'i5-7600T',
    'i5-7600',
    'i5-7600K',
    'i5-7640X',
    'i7-7700T',
    'i7-7700',
    'i7-7700K',
    'i7-7740X',
    'i7-7800X',
    'i7-7820X',
    'i9-7900X',
    'i9-7920X',
    'i9-7940X',
    'i9-7960X',
    'i9-7980XE',
    'i3-8100B',
    'i3-8100H',
    'i3-8109U',
    'i3-8130U',
    'i3-8140U',
    'i3-8145U',
    'i5-8200Y',
    'i5-8210Y',
    'i5-8250U',
    'i5-8257U',
    'i5-8259U',
    'i5-8260U',
    'i5-8265U',
    'i5-8269U',
    'i5-8300H',
    'i5-8310Y',
    'i5-8350U',
    'i5-8365U',
    'i5-8400B',
    'i5-8400H',
    'i5-8500B',
    'i7-8500Y',
    'i7-8550U',
    'i7-8557U',
    'i7-8559U',
    'i7-8565U',
    'i7-8569U',
    'i7-8650U',
    'i7-8665U',
    'i7-8700B',
    'i7-8750H',
    'i7-8850H',
    'i9-8950HK',
    'm3-8100Y',
    'i3-8100',
    'i3-8350K',
    'i5-8400',
    'i5-8500',
    'i5-8600K',
    'i7-8086K',
    'i7-8700',
    'i7-8700K',
    'i3-9350KF',
    'i5-9400F',
    'i5-9600K',
    'i7-9700K',
    'i9-9900K',
    'i7-10510Y',
    'i7-10510U',
    'i7-10710U',
    'i7-1060G7',
    'i7-1065G7'
  ];
class _IntelState extends State<Intel> {

  @override
  Widget build(BuildContext context) {
    final id = Provider.of<MyCart1>(context);
    final String k = 'CPU';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return Card(
                shadowColor: Colors.tealAccent[100],
                color: Colors.tealAccent[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                    child: ListTile(
                  subtitle: Text(k),
                  onTap: () => {
                    id.add(k, intel[index]),
                    Navigator.pop(context),
                    //Navigator.push(context,
                       // MaterialPageRoute(builder: (context) => Main()))
                  },
                  title: Text(intel[index]),
                )),
              );
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: intel.length));
  }
}
