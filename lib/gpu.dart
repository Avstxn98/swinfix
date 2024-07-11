import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:swinfix/cartmodel.dart';
import 'buildpc.dart';

class GPUmain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GpuBody();
  }
}

class GpuBody extends StatefulWidget {
  @override
  _GpuBodyState createState() => _GpuBodyState();
}

class _GpuBodyState extends State<GpuBody> {
  List<String> _tabs = ['Nvidia', 'Radeon'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.blueAccent[700],
          title: const Text('GPU',style: TextStyle(color: Colors.black)),
          shadowColor: Colors.grey,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45)),
          bottom: TabBar(indicatorSize: TabBarIndicatorSize.label,labelColor: Colors.black,
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(children: [Nvidia(), Radeon()]),
      ),
    );
  }
}

typedef VoidCallback = Function(String name);

class Nvidia extends StatefulWidget {
  Nvidia();
  @override
  _NvidiaState createState() => _NvidiaState();
}
List<String> nvidia = [
    'GRID M3-3020',
    'Quadro RTX A6000',
    'GeForce RTX 3070 Ti',
    'GeForce RTX 3060',
    'GeForce RTX 3060 Ti',
    'GeForce RTX 3070',
    'GeForce RTX 3080',
    'GeForce RTX 3090',
    'GRID RTX T10-16',
    'GRID RTX T10-4',
    'GRID RTX T10-8',
    'GeForce GTX 1650 TU116',
    'A100 PCIe',
    'GeForce GTX 1650 TU106',
    'A100 SXM4',
    'GRID A100A',
    'GRID A100B',
    'GeForce GTX 1650 GDDR6',
    'GeForce RTX 2060 TU104',
    'Tesla V100 SXM2 16 GB',
    'Tesla V100S PCIe 32 GB',
    'GeForce GTX 1650 SUPER',
    'GeForce GTX 1660 SUPER',
    'GeForce RTX 2080 SUPER',
    'GeForce RTX 2060 SUPER',
    'GeForce RTX 2070 SUPER',
    'Quadro P2200',
    'GeForce GTX 1650',
    'GeForce GTX 1660',
    'GeForce GTX 1660 Ti',
    'GeForce RTX 2060',
    'TITAN RTX',
    'GeForce GTX 1070 GDDR5X',
    'Quadro RTX 4000',
    'GeForce GTX 1060 6 GB GDDR5X',
    'GeForce GTX 1060 8 GB GDDR5X',
    'GeForce RTX 2070',
    'P102-101',
    'GeForce GT 1030 GK107',
    'GeForce RTX 2080',
    'GeForce RTX 2080 Ti',
    'Tesla T4',
    'Quadro RTX 5000',
    'Quadro RTX 6000',
    'Quadro RTX 6000 Passive',
    'Quadro RTX 8000',
    'Quadro RTX 8000 Passive',
    'TITAN V CEO Edition',
    'GeForce GTX 1080 Ti 10 GB',
    'GeForce GTX 1050 3 GB',
    'Quadro GV100',
    'Tesla V100 DGXS',
    'Tesla V100 FHHL',
    'Tesla V100 PCIe 32 GB',
    'Tesla V100 SXM2 32 GB',
    'Tesla V100 SXM3 32 GB',
    'GeForce GT 1030 DDR4',
    'GeForce GTX 1060 6 GB GP104',
    'P102-100',
    'Quadro P620',
    'GeForce GTX 1060 6 GB Rev. 2',
    'P104-101',
    'GeForce GTX 1060 5 GB',
    'P104-100',
    'TITAN V',
    'GeForce GTX 1070 Ti',
    'GeForce GT 720 OEM',
    'P106-090',
    'Tesla V100 PCIe 16 GB',
    'Tesla V100 SXM2 16 GB',
    'P106-100',
    'GeForce GT 1030',
    'GeForce GTX 1060 6 GB 9Gbps',
    'GeForce GTX 1080 11Gbps',
    'TITAN Xp',
    'Tesla P6',
    'Switch GPU',
    'GeForce GTX 1080 Ti',
    'Quadro P1000',
    'Quadro P1000',
    'Quadro P400',
    'Quadro P600',
    'Quadro P2000',
    'Quadro P4000',
    'GeForce GTX 1060 3 GB GP104',
    'GeForce GTX 1050',
    'GeForce GTX 1050 Ti',
    'Quadro M3000 SE',
    'Quadro GP100',
    'Quadro P5000',
    'Quadro P6000',
    'Tesla P4',
    'Tesla P40',
    'GeForce GTX 1060 3 GB',
    'TITAN X Pascal',
    'GeForce GTX 1060 6 GB',
    'Tesla P100 PCIe 12 GB',
    'Tesla P100 PCIe 16 GB',
    'GeForce GTX 1070',
    'GeForce GTX 1080',
    'GRID M10-8Q',
    'GRID M3-3020'
  ];
class _NvidiaState extends State<Nvidia> {
  
  @override
  Widget build(BuildContext context) {
    final id = Provider.of<MyCart1>(context);
    final String k = 'GPU';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (
              context,
              int index,
            ) {
              return Card(color: Colors.blueAccent[700],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                    child: ListTile(
                  onTap: () {
                    id.add(k, nvidia[index]);
                    Navigator.pop(context);

                    //Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => Main()));
                  },
                  title: Text(nvidia[index]),
                  subtitle: Text(k),
                )),
              );
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: nvidia.length));
  }
}

class Radeon extends StatefulWidget {
  @override
  _RadeonState createState() => _RadeonState();
}
 List<String> radeon = [
    'Xbox One S GPU',
    'Atari VCS 800 GPU',
    'Radeon Instinct MI100',
    'Playstation 5 GPU',
    'Xbox Series S GPU',
    'Xbox Series X GPU',
    'Radeon RX 6500 XT',
    'Radeon RX 6700 XT',
    'Radeon RX 6800 XT',
    'Radeon RX 6900 XT',
    'Radeon Pro 5300',
    'Radeon Pro 5500 XT',
    'Radeon Pro 5700',
    'Radeon Pro 5700 XT',
    'Radeon RX 5300',
    'Radeon Pro VII',
    'AeroBox GPU',
    'Radeon RX 590 GME',
    'Radeon Pro W5500',
    'Radeon RX 5600 OEM',
    'Radeon RX 5600 XT',
    'Radeon Vega 3  Embedded',
    'Radeon Vega 3 Embedded',
    'Radeon RX 5500 XT',
    'Radeon Pro W5700X',
    'Radeon Vega 3',
    'Radeon Pro W5700',
    'Radeon Pro Vega II Duo',
    'Radeon RX 5300 XT',
    'Radeon RX 5500 OEM',
    'Radeon Vega 11',
    'Radeon RX 5700',
    'Radeon RX 5700 XT',
    'Radeon RX 5700 XT 50th Anniversary',
    'Radeon RX Vega 11',
    'Radeon Vega 8',
    'Radeon Pro WX 3200',
    'Radeon Pro Vega II',
    'Radeon 550X',
    'Radeon RX 560 XT',
    'Radeon VII',
    'Radeon RX 550X',
    'Radeon Instinct MI50',
    'Radeon Instinct MI60',
    'Radeon RX 590',
    'Radeon RX 580 2048SP',
    'Radeon RX 580G',
    'Radeon Vega 3 Embedded',
    'Radeon Pro V340',
    'Radeon Pro WX 8200',
    'Zhongshan Subor Z+ GPU',
    'Radeon Vega 3 Embedded',
    'Radeon Vega 6 Embedded',
    'Radeon RX Vega 11 Embedded',
    'Radeon Vega 8 Embedded',
    'Radeon 550X 640SP',
    'Radeon RX 550X 640SP',
    'Radeon RX 560DX',
    'Radeon RX 560X',
    'Radeon RX 570X',
    'Radeon RX 580X',
    'Radeon Vega 11 Embedded',
    'Radeon Vega 3 Embedded',
    'Radeon Vega 8 Embedded',
    'Radeon RX Vega 11',
    'Radeon Vega 8',
    'Radeon RX Vega Nano',
    'Radeon Pro WX 8100',
    'Xbox One X GPU',
    'Radeon RX 550 640SP',
    'Radeon R5 Graphics',
    'Radeon RX Vega 56',
    'Radeon Pro SSG',
    'Radeon RX Vega 64',
    'Radeon RX Vega 64 Limited Edition',
    'Radeon RX Vega 64 Liquid Cooling',
    'Radeon Vega Frontier Edition Watercooled',
    'Radeon Pro WX 9100',
    'Radeon RX 560 896SP',
    'Radeon RX 560D',
    'Radeon Pro V320',
    'Radeon Instinct MI25',
    'Radeon Vega Frontier Edition',
    'Radeon Pro WX 3100',
    'Radeon Pro WX 2100',
    'Radeon Pro Duo Polaris',
    'Radeon 550',
    'Radeon RX 550',
    'Radeon RX 560',
    'Radeon RX 570',
    'Radeon RX 580',
    'Radeon RX 460 1024SP',
    'Radeon Instinct MI6',
    'Radeon Instinct MI8',
    'Radeon Pro WX 5100',
    'Playstation 4 Pro GPU',
    'Radeon Pro WX 4100',
    'Radeon Pro WX 7100',
    'Radeon RX 470D',
    'Radeon RX 460',
    'Radeon RX 470',
    'Xbox One S GPU'
  ];
class _RadeonState extends State<Radeon> {
 
  @override
  Widget build(BuildContext context) {
    final id = Provider.of<MyCart1>(context);
    final String k = 'GPU';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () => {},
                  child: Card(color: Colors.blueAccent[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        child: ListTile(
                      onTap: () {
                        id.add(k, radeon[index]);
                        Navigator.pop(context);

                       // Navigator.push(context,
                         //   MaterialPageRoute(builder: (context) => Main()));
                      },
                      title: Text(radeon[index]),subtitle: Text(k)
                    )),
                  ));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: radeon.length));
  }
}
