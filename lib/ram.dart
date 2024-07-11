import 'buildpc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';

class RamMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RamBody();
  }
}

class RamBody extends StatefulWidget {
  @override
  _RamBodyState createState() => _RamBodyState();
}

class _RamBodyState extends State<RamBody> {
  List<String> _tabs = ['DDR3', 'DDR4'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.greenAccent,
          title: const Text('RAM',style: TextStyle(color: Colors.black),),
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45)),
          bottom: TabBar(indicatorSize: TabBarIndicatorSize.label,labelColor: Colors.black
            ,
            // These are the widgets to put in each tab in the tab bar.
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            children: [Ddr3(), Ddr4()]),
      ),
    );
  }
}

class Ddr3 extends StatefulWidget {
  @override
  _Ddr3State createState() => _Ddr3State();
}
List<String> ddr3 =['32GB Crucial DDR3L Server Memory, PC3-12800 (1600), 240 Pins LRDIMM, Load Reduced, ECC, CAS 11, 1.35V                    ',
  '32GB Crucial Server Memory Module, DDR3 PC3-10600 (1333), 240 Pins, ECC, Registered, CAS 9, 1.35V                        ',
   '32GB (4x8GB) Corsair DDR3 Vengeance Low Profile Jet Black, PC3-12800 (1600), Non-ECC, CAS 10-10-10-27, XMP, 1.5V',
  '32GB Kingston System Specific DELL Memory, DDR3L PC3-12800 (1600MHz), LRDIMM, 167MHz ECC, CL11, 1.35V',
  '8GB (1x8GB) Crucial CT8G3ERSLD8160B DDR3L Server RAM, PC3-12800 (1600), ECC RDIMM (Registered), CL11, 1.35V',
   '16GB (2x8GB) Corsair MAC Memory DDR3L SO-DIMM PC3-12800 (1600), 204 Pin, Non-ECC Unbuffered, CAS 11-11-11-30, 1.35V/1.5V ',
  '4GB (1x4GB) Crucial DDR3L SO-DIMM Laptop/SFF PC/Mac Memory, PC3-10600 (1333), Non-ECC Unbuffered, CAS 9, 1.35V    ',
  '8GB (2x4GB) Corsair Apple/MacPro DDR3 SO-DIMM PC3-8500 (1066), Non-ECC Unbuffered, CAS 7-7-7-20, 1.50V                   ',
  '8GB (2x4GB) Corsair Apple iMac/MacBook/MacBook Pro DDR3 SO-DIMM, PC3-10666 (1333), Non-ECC Unbuffered, 9-9-9-24, 1.5V    ', 
  '1GB Scan DDR3 PC3-12800 (1600MHz) 240 Pin, Non-ECC Unbuffered, CAS 7-7-7-18    ',
   '4GB Corsair Apple/MacPro DDR3 SO-DIMM PC3-8500 (1066), Non-ECC Unbuffered, CAS 7-7-7-20, 1.50V                           ',
  '4GB Corsair Apple iMac/MacBook/MacBook Pro DDR3 SO-DIMM, PC3-10666 (1333), Non-ECC Unbuffered, CAS 9-9-9-24, 1.5V        ',
  '16GB (2x8GB) Corsair DDR3L SO-DIMM Value Select, PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-28, 1.35V            ',
  '8GB (2x4GB) Corsair DDR3L SO-DIMM Value Select, PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-28, 1.35V             ',
  '8GB (1x8GB) Corsair DDR3L SO-DIMM Value Select, PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-28, 1.35V             ',
  '1x4GB Corsair DDR3 SODIMM PC3-12800 1.35V 1600Mhz C11                             ',
  '4GB (1x4GB) Corsair DDR3L SO-DIMM Value Select, PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-28, 1.35V             ',
  '4GB Synology NAS Upgrade RAM Module, DDR3-1600, Unbuffered, SO-DIMM, 204pin, CL=11, 1.5V       ',
  '4GB (1x4GB) Crucial CT51264BF160BJ DDR3 SO-DIMM Laptop/SFF Memory, PC3-12800 (1600), Non-ECC Unbuffered, CAS 11, 1.35V   ',
  '2GB Corsair DDR3 SO-DIMM PC3-10600 (1333), 204 Pin, Non-ECC Unbuffered, CAS 9-9-9-24, 1.50V                              ',
  '8GB (2x4GB) Corsair Vengeance Performance DDR3 SO-DIMM PC3-12800 (1600), 204 Pin, Non-ECC Unbuffered, CAS 9-9-9-24, 1.5V ',
    '16GB (2x8GB) Corsair DDR3 Vengeance Jet Black,  PC3-12800 (1600), Non-ECC Unbuffered, CAS 9-9-9-24, XMP, 1.5V            ',
  '16GB (2x8GB) Corsair DDR3 Vengeance Low Profile Jet Black PC3-12800 (1600), Non-ECC Unbuffered, CAS 9-9-9-24, XMP, 1.5V  ',
  '16GB (2x8GB) Corsair DDR3 Vengeance Low Profile Jet Black, PC3-12800 (1600), Non-ECC, CAS 10-10-10-27, XMP, 1.5V         ',
  '16GB (2x8GB) Corsair DDR3 Vengeance Pro Series Red PC3-12800 (1600), Non-ECC Unbuffered, CAS 9-9-9-24, XMP, 1.5V         ',
  '16GB (2x8GB) Corsair DDR3 Vengeance Jet Black, PC3-12800 (1600), Non-ECC Unbuffered, CAS 10-10-10-27, XMP, 1.5V          ',
   '8GB (1x8GB) Corsair DDR3 Vengeance LP Black PC3-12800 (1600), Non-ECC Unbuffered, CAS 10-10-10-27, XMP 1.3, 1.5V         ',
  '8GB (1x8GB) Corsair DDR3L Value Select, PC3-12800 1600MHz, Non-ECC Unbuffered, CAS 11-11-11-28, 1.35V Low Voltage Memory ',
  '4GB Corsair DDR3 Vengeance Low Profile Jet Black, PC3-12800 (1600), Non-ECC Unbuffered, CAS 9-9-9-24, XMP, 1.5V          ',
  '8GB (2x4GB) Corsair DDR3 Vengeance Jet Black, PC3-12800 (1600), Non-ECC, CAS 9-9-9-24, XMP, 1.50V                        ',
  '8GB (2x4GB) Corsair DDR3 Vengeance Jet Black Low Profile, PC3-12800 (1600), Non-ECC, CAS 9-9-9-24, XMP, 1.5V             ',
  '8GB (2x4GB) Corsair Value DDR3 Desktop PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-30, 1.5V                       ',
  '8GB Corsair Value DDR3 Desktop PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-30, 1.5V                               ',
  '4GB Corsair DDR3 Value Desktop PC3-12800 (1600), Non-ECC Unbuffered, CAS 11-11-11-30, 1.5V                               ',
  '4GB (1x4GB) Corsair DDR3L Value Select, PC3-12800 1600MHz, Non-ECC Unbuffered, CAS 11-11-11-28, 1.35V Low Voltage Memory ',
  '4GB (2x2GB) Corsair DDR3 Value PC3-10666 (1333) Non-ECC Unbuffered, CAS 9-9-9-24, 1.50V',
  '4GB Corsair DDR3 XMS3, PC3-10666 (1333), Non-ECC Unbuffered, CAS 9-9-9-24, 1.50V                                         ',
  '16GB (2x8GB) Corsair DDR3 XMS3, PC3-10666 (1333), Non-ECC Unbuffered, CAS 9-9-9-24, 1.5V                                 ',
  '8GB (2x4GB) Corsair DDR3 XMS3, PC3-10600 (1333), Non-ECC Unbuffered, CAS 9-9-9-24, 1.50V                                 ',
  '4GB Corsair DDR3 Value Select, PC3-10600 (1333), Non-ECC Unbuffered, CAS 9-9-9-24, 1.5V                                  ',]; 
class _Ddr3State extends State<Ddr3> {
  
  @override
  Widget build(BuildContext context) {
    final id = Provider.of<MyCart1>(context);
    final String k = 'RAM';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () => {},
                  child: Card(color: Colors.greenAccent[400], shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        child: ListTile(
                      onTap: () => {
                        id.add(k,ddr3[index]),
                        Navigator.pop(context),
                       // Navigator.push(context,
                       // MaterialPageRoute(builder: (context) => Main()))
    
                      },
                      title: Text(ddr3[index]),
                      subtitle: Text(k),
                    )),
                  ));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: ddr3.length));
  }
}



class Ddr4 extends StatefulWidget {
  @override
  _Ddr4State createState() => _Ddr4State();
}
List<String> ddr4 = [ 
  '512MB Corsair Server, PC3200 (400), 184 Pins, ECC Registered, CAS 2.5',
  '2GB Corsair Server, DDR2 PC2-5300 (667), ECC Registered/Fullybuffered, CAS 5-5-5-15                                ',
 
  '128GB (1x128GB) SK hynix HMABAGR7C4R4N-XST4 DDR4 Server RAM, PC4-25600 (3200), ECC Registered, CAS 22-22-22, 8R, 1.2V    ',
  '64GB (1x64) Hynix DDR4 3200MHz PC4-25600 ECC Load Reduced CL22       ',
  '32GB (1x32GB) SK hynix HMA84GR7CJR4N-XNT8 DDR4 Server RAM, PC4-25600 (3200), ECC Registered, CAS 22-22-22, 2R, 1.2V      ',
  '32GB (1x32GB) Samsung M393A4K40DB3-CWE DDR4 RDIMM Server RAM, PC4-25600 (3200), ECC Registered, CAS 22, Dual Rank, 1.2V  ',
  '16GB (1x16GB) SK hynix HMA82GR7CJR4N-XNT4 DDR4 Server RAM, PC4-25600 (3200), ECC Registered, CAS 22-22-22, 1R, 1.2V     ',
  '16GB (1x16) Micron DDR4 PC4 25600 3200MHz CL22 ECC Reg. 1.2V RDIMM       ',
  '16GB (1x16GB) Samsung M393A2K43DB3-CWE DDR4 Server RAM, PC4-25600 (3200), ECC Registered, CAS 22, Dual Rank, 1.2V        ',
  '8GB (1x8)  Hynix DDR4 PC4 25600 3200MHz CL22 ECC Reg. 1.2V RDIMM       ',
  '128GB (1x128GB) Crucial CT128G4ZFJ429S DDR4 Server RAM, PC4-23400 (2933), ECC, Load Reduced, CAS 21, Octal Rank, 1.2V    ',
  '64GB Crucial CT64G4RFD4293 DDR4 RDIMM Server RAM, PC4-23400 (2933), ECC Registered, CAS 21, 2R, 1.2V, 288-Pin   ',
  '64GB (1x64) Hynix DDR4 PC4 23400 2933MHz ECC Reg. Server / Workstation Memory1.2V RDIMM    ',
  '32GB Crucial CT32G4RFD4293 DDR4 RDIMM Server RAM, PC4-23400 (2933), ECC Registered, CAS 21, 2R, 1.2V, 288-Pin         ',
  '32GB SK Hynix DDR4 2933Mhz ECC Reg RDIMM, 21 Latency, 288-Pin    ',
  '8GB Hynix HMA81GR7CJR8N-WM DDR4 Server RAM, PC4-23400 (2933), ECC Registered, CAS 21, 1.2V, 288-Pin    ',
  '16GB Crucial CT16G4RFS4293 DDR4 Server RAM, PC4-23400 (2933), ECC Registered, CAS 21, 1R, 1.2V , 288-Pin           ',
  '8GB Crucial CT8G4RFS8293 DDR4 Server RAM, PC4-23400 (2933), ECC Registered, CAS 21, 1R, 1.2V, 288-Pin     ',
  '8GB (1x8) Hynix DDR4 PC4 23400 2933MHz ECC Reg. Server / Workstation Memory1.2V RDIMM   ',
  '64GB (1x64GB) Samsung M393A8G40MB2-CVF DDR4 Server RAM, PC4-23400 (2933), ECC Registered, CAS 22, Dual Rank, 1.2V        ',
  '64GB (1x64) Hynix DDR4 PC4 23400 2933MHz ECC Reg. Server / Workstation Memory1.2V RDIMM      ',
  '32GB (1x32GB) Samsung M393A4K40CB2-CVF DDR4 Server RAM, PC4-23400 (2933), ECC Registered, CAS 21, Dual Rank,1.2V         ',
  '64GB (1x64GB) Crucial CT64G4LFQ4266 DDR4 Server RAM, PC4-21300 (2666), ECC, Load Reduced, CAS 19, Quad Rank, 1.2V        ',
  '32GB (1x32GB) Samsung M393A4K40BB2-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Dual Rank, 1.2V        ',
  '64GB (1x64GB) Samsung M386A8K40BM2-CTD DDR4 Server, PC3-21300 (2666), ECC LRDIMM CAS 19,  Quad Rank, 1.2V                ',
  '16GB (1x16GB) Samsung M393A2G40EB2-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 17, Dual Rank, 1.2V        ',
  '32GB (1x32GB) Samsung M391A4G43MB1-CTD DDR4 Server RAM, PC4-21300 (2666), ECC, CAS 17, Dual Rank, 1.2V          ',
  '32GB (1x32GB) Crucial CT32G4RFD4266 DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Dual Rank, 1.2V       ',
  '16GB (1x16GB) Samsung M393A2K43BB1-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Dual Rank, 1.2V        ',
  '16GB (1x16GB) Kingston KSM26RD8L/16MEI DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Dual Rank, 1.2V     ',
  '16GB (1x16) Crucial CT16G4WFD8266 DDR4 UDIMM 2666mhz (PC4-21300) Unbuffered ECC, CL19, 1.2v                             ',
  '16GB (1x16GB) Samsung M391A2K43BB1-CTD DDR4 Workstation RAM, PC4-21300 (2666), ECC Unbuffered, CAS 19, Dual Rank, 1.2V   ',
  '16GB (1x16GB) Crucial CT16G4RFD4266 DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, 1.2V            ',
  '16GB (1x16GB) Samsung M393A2K40BB2-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Single Rank, 1.2V      ',
  '16GB (1X16GB) SAMSUNG 2666MHZ PC4-21300 CL19 ECC REGISTERED 2RX8 1.2V DDR4 SDRAM 288-PIN Server RDIMM Memory           ',
  '8GB (1x8GB) Samsung M393A1G43EB1-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19-19-19, Dual Rank, 1.2V    ',
  '8GB (1x8GB) SK hynix HMA81GR7JJR8N-VK DDR4 Server/Workstation RAM, PC4-21300 (2666), ECC RDIMM, CAS 19, Single Rank,1.2V ',
  '8GB Crucial CT8G4RFS8266 Server RAM, PC4-21300 (2666), ECC Registered (RDIMM), 288 Pin, CL19, 1.2V                       ',
  '8GB (1x8GB) SK hynix HMA81GR7AFR8N-VK DDR4 Server/Workstation RAM, PC4-21300 (2666), ECC RDIMM, CAS 19, Single Rank,1.2V ',
  '8GB Samsung (1x8) DDR4 PC4-21300 2666MHz CL17 1.2V ECC UDIMM Server Memory             ',
  '8GB (1x8) Hynix DDR4 2666Mhz PC-21300 ECC Registered Server Memory CL19 1.2V              ',
  '8GB (1x8GB) Samsung M393A1G40EB2-CTD LP DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Single Rank, 1.2V     ',
  '32GB (1x32) Samsung M393A4K40CB2-CTD Server RAM, DDR4, Low Profile, PC4-21300 (2666), ECC Reg RDIMM, 288 Pin, 1.2V       ',
  '16GB Micron MTA18ASF2G72PDZ-2G6D1 Server RAM, Low Profile, PC4-21300 (2666), ECC Registered (RDIMM), 288 Pin, CL19, 1.2V ',
  '16GB (1x16GB) Samsung M393A2K40CB2-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19-19-19, Single Rank,1.2V ',
  '8GB (1x8GB) Samsung M393A1K43BB1-CTD DDR4 Server RAM, PC4-21300 (2666), ECC Registered, CAS 19, Single Rank, 1.2V        ',
  '128GB (4x32GB) Crucial CT4K32G4RFD424A DDR4 Server RAM, PC4-19200 (2400), ECC Registered, CAS 17, Dual Rank, 1.2V     ',
  '32GB Crucial DDR4-2400 ECC Registered DIMM, PC4-19200 (2400MHz), DR x4, 288 Pin, CL 17, 1.2V                             ',
  '32GB Samsung M386A4K40BB0-CRC DDR4 2400MHz ECC RDIMM Server/Workstation Load Reduced Memory Module         ',
  '64GB (1x64GB) Samsung DDR4 Server, PC4-19200 (2400), ECC Load-Reduced, CAS 17, 1.2V                    ',
  '32GB Samsung DDR4-2400Mhz LR ECC Registered Server Memory                                                                ',
  '32GB (1x32GB) SK hynix HMA84GL7AFR4N-UH DDR4 Server RAM, PC4-19200 (2400), ECC LRDIMM, CAS 17-17-17, Dual Rank, 1.2V    ',
  '32GB (1x32GB) Kingston KTH-PL424/32G DDR4 Server RAM, PC4-19200 (2400), ECC Registered, CAS 17, Dual Rank, 1.2V       ',
  '32GB Samsung DDR4, PC4-19200 (2400), ECC REG , 288 Pin, CL17, 1.2V  ',
  '16GB Samsung M393A2K40CB1-CRC DDR4 Server RAM, PC4-19200 (2400), ECC RDIMM, CAS 17, Single Rank, 1.2V             ',
  '32GB (1x32GB) SK hynix HMA84GR7MFR4N-UH DDR4 Server/Workstation RAM, PC4-19200 (2400), ECC RDIMM, CAS 17, Dual Rank,1.2V ',
  '16GB (1x16GB) SK hynix HMA42GR7BJR4N-UH DDR4 Server RAM, PC4-19200 (2400), ECC Registered, CAS 17-17-17, Dual Rank, 1.2V ',
  '32GB Samsung M393A4K40CB1-CRC Server RAM, Low Profile, PC4-19200 (2400), ECC Registered (RDIMM), 288 Pin, CL17, 1.2V     ',
  '16GB Samsung DDR4 Server RAM, 2400MHz, ECC, 1.2v                                             ',
  '8GB (1x8GB) Samsung DDR4 LP Server, PC4-19200 (2400), ECC Registered, CAS 17, 1.2V, 288 Pin                              ',
  '16GB (1x16GB) Samsung M393A2K43BB1-CRC DDR4 Server RAM, PC4-19200 (2400), ECC Registered, CAS 17-17-17, Dual Rank, 1.2V  ',
  '8GB (1x8GB) Samsung DDR4 2400 Server Memory, ECC Registered, 1.2v                      ',
  '8GB (1x8GB) SK hynix HMA41GR7BJR8N-UH DDR4 Server/Workstation RAM, PC4-19200 (2400), ECC RDIMM, CAS 17, Dual Rank, 1.2V  ',
  '16GB Samsung M393A2K43CB1-CRC Server RAM, Low Profile, PC4-19200 (2400), ECC Registered (RDIMM), 288 Pin, CL17, 1.2V     ',
  '8GB Samsung M393A1K43BB0-CRC Server RAM, Low Profile, PC4-19200 (2400), ECC Registered (RDIMM), 288 Pin, CL17, 1.2V      ',
  '32GB (4x8GB) Crucial DDR4 Server/Workstation RAM, PC4-17000 (2133), 288, Non-ECC UDIMM, 15, Dual Rank, 1.2V           ',
  '16GB (1x16) Samsung Server Memory, DDR4 2133, ECC, Registered, 288 Pin, CL15, 1.2V, Single Module       ',
  '16GB (1x16GB) Hynix HMA-42GR7AFR4N-TF DDR4 Server, PC4-17000 (2133), 288, ECC, RDIMM, 15-15-15, 1.2V                     ',
  '256MB Major, SDRAM PC133 (133), 168 Pin, Non-ECC Unbuffered          ',
  'Akasa AK-MX Vegas RAM Mate, Aluminium Heatsink Cooling Vest With Addressable RGB LED lights, ASUS, MSI, Gigabyte, ASRock ',
 
  '1GB Corsair Value Select, DDR SO-DIMM PC3200 (400), 200 Pin, Non-ECC Unbuffered, CAS 3-3-3-8                             ',
  '512MB Corsair Value Select, DDR SO-DIMM PC3200 (400), 200 Pin, Non-ECC Unbuffered, CAS 3-3-3-8                           ',
  '1Gb Corsair Value Select DDR PC3200 (400), 184 Pins, Non-ECC Unbuffered, CAS 3-3-3-8                                     ',
  '64GB (2x32GB) Corsair DDR4 Memory for Apple Mac, PC4-21300 (2666), Non-ECC Unbuffered, CAS 18-18-18-43, 1.2V             ',
  '3GB Corsair Value Select, DDR2 SO-DIMM PC2-5300 (667), 200 Pin, Non-ECC Unbuffered, 5-5-5-12                    ',
 
  '1GB Corsair Value Select, DDR2 SO-DIMM PC2-5300 (667), 200 Pin, Non-ECC Unbuffered, CAS 5-5-5-15                      ',
 
  
  '16GB (1x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-28800 (3600), Non-ECC Unbuff, CAS 18, 1.35V, AMD Ryzen Optimised ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 19-23-23-45, XMP 2.0, 1.35V     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 20-23-23-43, XMP 2.0, 1.35V     ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 18, 1.35V, AMD Ryzen Optimised ',
  '8GB (1x8GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-28800 (3600), Non-ECC Unbuff, CAS 18, 1.35V, AMD Ryzen Optimised   ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 18, 1.35V, AMD Ryzen Optimised   ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 18-22-22-42, 1.35V',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 18, 1.35V, AMD Ryzen Optimised ',
  '16GB (2x8GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-28800 (3600), Non-ECC Unbuff, CAS 18, 1.35V, AMD Ryzen Optimised  ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuff, CAS 18, 1.35V, AMD Ryzen Optimised      ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-28800 (3600), Non-ECC Unbuffered, CAS 18-22-22-42, XMP 2.0, 1.35V     ',
  'Akasa AK-MX Vegas RAM Mate, Aluminium Heatsink Cooling Vest With Addressable RGB LED lights, ASUS, MSI, Gigabyte, ASRock',
  '32GB (2x16GB) Corsair DDR4 Dominator Platinum RGB, PC4-25600 (3200), Non-ECC Unbuff, CAS 14-14-14-34, RGB LED, 1.35V     ',
  '64GB (2x32GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 15-17-17-35, XMP 2.0, 1.35V    ',
  '64GB (2x32GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Dominator Platinum RGB, PC4-27700 (3466), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, XMP,1.35V',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-27700 (3466), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, 1.35V    ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V',
  '32GB (2x16GB) Corsair DDR4 Dominator Platinum RGB, PC4-25600 (3200), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, XMP,1.35V ',
  '32GB (2x16GB) Corsair DDR4 Dominator Platinum RGB, PC4-25600 (3200), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, XMP,1.35V ',
  '32GB (2x16GB) Corsair DDR4 DOMINATOR Platinum RGB White, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16, XMP 2.0, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Dominator Platinum RGB, PC4-24000 (3000), Non-ECC Unbuff, CAS 15-17-17-35, RGB LED, XMP,1.35V ',
  '32GB (2x16GB) Corsair DDR4 Dominator Platinum, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-25600 (3200), Non-ECC Unbuff, CAS 16, 1.35V, AMD Ryzen Optimised ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO White, PC4-24000 (3000), Non-ECC Unbuff, CAS 15-17-17-35, RGB LED, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-24000 (3000), Non-ECC Unbuff, CAS 15-17-17-35, RGB LED, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-25600 (3200), Non-ECC Unbuff, CAS 16, 1.35V, AMD Ryzen Optimised     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-27700 (3466), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, 1.35V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 15-17-17-35, XMP 2.0, 1.35V    ',
  '32GB (1x32GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V    ',
  '16GB (2x8GB) Corsair DDR4 Dominator Platinum RGB, PC4-25600 (3200), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, XMP, 1.35V ',
  '16GB (2x8GB) Corsair DDR4 DOMINATOR Platinum RGB White, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16, XMP 2.0, 1.35V     ',
  '16GB (2x8GB) Corsair DDR4 Dominator Platinum RGB, PC4-24000 (3000), Non-ECC Unbuff, CAS 15-17-17-35, RGB LED, XMP, 1.35V ',
  '16GB (2x8GB) Corsair DDR4 Dominator Platinum, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V      ',
  '16GB (2x8GB) Corsair DDR4 Dominator Platinum, PC4-24000 (3000), Non-ECC Unbuffered, CAS 15-17-17-35, XMP 2.0, 1.35V      ',
  '16GB (2x8GB) Corsair DDR4 Vengeance RGB PRO White, PC4-24000 (3000), Non-ECC Unbuff, CAS 15-17-17-35, RGB LED, 1.35V     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Red, PC4-24000 (3000), Non-ECC Unbuffered, CAS 15-17-17-35, XMP 2.0, 1.35V       ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX White, PC4-24000 (3000), Non-ECC Unbuffered, CAS 15-17-17-35, XMP 2.0, 1.35V     ',
  '16GB (1x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-25600 (3200), Non-ECC Unbuff, CAS 16, 1.35V, AMD Ryzen Optimised ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX White, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Red, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V       ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX White, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V     ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16, 1.35V, AMD Ryzen Optimised ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 15-17-17-35, XMP 2.0, 1.35V    ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V    ',
  '8GB (1x8GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-25600 (3200), Non-ECC Unbuff, CAS 16, 1.35V, AMD Ryzen Optimised   ',
  '8GB (2x4GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V      ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16, 1.35V, AMD Ryzen Optimised   ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V      ',
  '64GB (2x32GB) Corsair DDR4 Vengeance LPX Black, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-25600 (3200), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO White, PC4-25600 (3200), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-25600 (3200), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-24000 (3000), Non-ECC Unbuffered, CAS 16-20-20-38, XMP 2.0, 1.35V    ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-27700 (3466), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V     ',

  '32GB (1x32GB) Samsung M378A4G43MB1-CTD DDR4 Server RAM, PC4-21300 (2666), Non-ECC, CAS 19, 1.2V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-23400 (2933), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, 1.35V    ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO White, PC4-21300 (2666), Non-ECC Unbuff, CAS 16-18-18-35, RGB LED, 1.2V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-21300 (2666), Non-ECC Unbuff, CAS 16-18-18-35, RGB LED, 1.2V     ',
  '32GB (1x32GB) Corsair DDR4 Vengeance LPX Black, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX White, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance RGB PRO Black, PC4-23400 (2933), Non-ECC Unbuff, CAS 16-18-18-36, RGB LED, 1.35V     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance RGB PRO White, PC4-21300 (2666), Non-ECC Unbuff, CAS 16-18-18-35, RGB LED, 1.2V      ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-23400 (2933), Non-ECC Unbuffered, CAS 16-18-18-36, XMP 2.0, 1.35V     ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-21300 (2666), Non-ECC UDIMM, CAS 16-18-18-35, XMP2.0, 1.2V, for Ryzen ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX White, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V      ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V     ',
  '8GB (2x4GB) Corsair DDR4 Vengeance LPX Red, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V         ',
  '8GB (2x4GB) Corsair DDR4 Vengeance LPX Black, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V       ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V       ',
  '8GB (1x8GB) Corsair DDR4 Value Select, PC4-21300 (2666), Non-ECC Unbuffered, CAS 18-18-18-43, 1.2V                       ',
  '4GB (1x4GB) Corsair DDR4 Value Select, PC4-21300 (2666), Non-ECC Unbuffered, CAS 18-18-18-43, 1.2V',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-21300 (2666), Non-ECC Unbuffered, CAS 16-18-18-35, XMP 2.0, 1.2V     ',
 
  '32GB (1x32GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V     ',
  '32GB (2x16GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V     ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 14-16-16-31, XMP 2.0, 1.2V       ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Red, PC4-19200 (2400), Non-ECC Unbuffered, CAS 14-16-16-31, XMP 2.0, 1.2V        ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Red, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V        ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 14-16-16-31, XMP 2.0, 1.2V     ',
  '16GB (1x16GB) Crucial CT16G4DFD824A RAM, Low Profile, PC4-19200 (2400), Non-ECC Unbuffered, 288 Pin, CL17, 1.2V        ',
  '16GB (1x16GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V     ',
  '8GB (2x4GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V       ',
  '4GB (1x4GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 14-16-16-31, XMP 2.0, 1.2V       ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 14-16-16-31, XMP 2.0, 1.2V       ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Red, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V         ',
  '8GB (1x8GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V       ',
  '8GB (1x8GB) Corsair DDR4 Value Select, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, 1.2V                       ',
  '4GB (1x4GB) Corsair DDR4 Vengeance LPX Black, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, XMP 2.0, 1.2V       ',
  '4GB (1x4GB) Corsair DDR4 Value Select, PC4-19200 (2400), Non-ECC Unbuffered, CAS 16-16-16-39, 1.2V                       ',
  
  '16GB (1x16GB) Corsair DDR4 Value Select, PC4-17000 (2133), Non-ECC Unbuffered, CAS 15-15-15-36,  Black PCB, 1.2V         ',
  '8GB (2x4GB) Corsair DDR4 Vengeance LPX Red, PC4-17000 (2133), Non-ECC Unbuffered, CAS 13-15-15-28, XMP 2.0, 1.2V         ',
  '16GB (2x8GB) Corsair DDR4 Vengeance LPX Black, PC4-17000 (2133), Non-ECC Unbuffered, CAS 13-15-15-28,  XMP 2.0, 1.2V     ',
  '8GB (2x4GB) Corsair DDR4 Vengeance LPX Black, PC4-17000 (2133), Non-ECC Unbuffered, CAS 13-15-15-28,  XMP 2.0, 1.2V      ',
  '8GB Corsair DDR4 Value Select, PC4-17000 (2133), Non-ECC Unbuffered, CAS 15-15-15-36, 1.2V, Single Stick, Desktop Memory ',
  '4GB Corsair DDR4 Value Select, PC4-17000 (2133), Non-ECC Unbuffered, CAS 15-15-15-36, 1.2V, Single Stick, Desktop Memory '
];
class _Ddr4State extends State<Ddr4> {
  

  @override
  Widget build(BuildContext context) {
    final id = Provider.of<MyCart1>(context);
    final String k = 'RAM';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () => {},
                  child: Card(color: Colors.greenAccent[700], shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        child: ListTile(
                      onTap: () => {
                        id.add(k,ddr4[index]),
                        Navigator.pop(context),
                        //Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => Main()))
    
                      },
                      title: Text(ddr4[index]),
                      subtitle: Text(k),
                    )),
                  ));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: ddr4.length));
  }
}
