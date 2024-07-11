import 'buildpc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cartmodel.dart';

class MotherboardMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MotherboardBody();
  }
}

class MotherboardBody extends StatefulWidget {
  @override
  _MotherboardBodyState createState() => _MotherboardBodyState();
}

class _MotherboardBodyState extends State<MotherboardBody> {
  List<String> _tabs = ['AMD', 'Intel'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
         backgroundColor: Colors.black,
        appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.redAccent,
          title: const Text('Motherboard',style: TextStyle(color: Colors.black),),
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45)),
          bottom: TabBar(indicatorSize: TabBarIndicatorSize.label,labelColor: Colors.black,
            
           
            // These are the widgets to put in each tab in the tab bar.
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            children: [AMD(), Intel()]),
      ),
    );
    
  }
}

class AMD extends StatefulWidget {
  @override
  _AMDState createState() => _AMDState();
}
 final List<String> amdmo = [
    'ASUS ROG STRIX B450-E GAMING, AMD B450, S AM4, DDR4, SATA3, Dual M.2, 3-Way CrossFire, Intel GbE/WiFi, USB 3.1 G2 A, ATX',
    'MSI B450 GAMING PRO CARBON MAX WIFI, AMD B450, S AM4, DDR4, SATA3, 2x M.2, GbE, ac WiFi/BT5, USB 3.2 Gen2 A+C, ATX       ',
    'Gigabyte B450 AORUS Pro, AMD B450, AM4, DDR4, 2x M.2, 2-Way CrossFire, Intel GbE, USB3.1                      ',
    'MSI B450 GAMING PLUS MAX, AMD B450, S AM4, DDR4, SATA3, M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen2 A, ATX           ',
    'MSI B450-A PRO MAX, AMD B450, S AM4, DDR4, SATA3, M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen2 A, ATX                 ',
    'ASRock B450 Steel Legend, AMD B450, S AM4, DDR4, SATA3, Dual M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen2 A+C, ATX    ',
    'ASRock Fatal1ty B450 Gaming K4, AMD B450, AM4, DDR4, 2x M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen2 A+C, ATX         ',
    'ASRock B450 Pro4, AMD B450, AM4, DDR4, 2x M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen2 A+C, ATX                       ',
    'ASUS ROG STRIX B450-F AM4 ATX Motherboard + AMD Ryzen 5 3600 6-Core/12-Thread Processor w/ Wraith Stealth                ',
    'ASUS ROG STRIX B450-F GAMING, AMD B450, S AM4, DDR4, SATA3, Dual M.2, 3-Way CrossFire, Intel GbE, USB 3.1 Gen2 A,ATX     ',
    'MSI B450 TOMAHAWK MAX, AMD B450, S AM4, DDR4, SATA3, M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen2 A+C, ATX            ',
    'ASUS PRIME B450-PLUS, AMD B450, S AM4, DDR4, SATA3, M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen2 A + Gen1 C, ATX      ',
    'Gigabyte B450 AORUS Elite, AMD B450, AM4, DDR4, 2x M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen1 Type-A, ATX           ',
    'ASUS TUF B450-PLUS GAMING, AMD B450, S AM4, DDR4, SATA3, M.2, 2-Way CrossFire, Realtek GbE, USB 3.1 Gen2 A + G, ATX      ',
    'ASUS ROG STRIX B550-I GAMING AM4 2.5GbE/Wifi 6 mITX Motherboard + 1TB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle        ',
    'ASRock B550 Phantom Gaming ITX/ax, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, 2.5GbE, ax WiFi/BT 5.1, Mini-ITX    ',
    'MSI MPG B550I GAMING EDGE WIFI, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, 2.5GbE, ax WiFi/BT 5.1, Mini-ITX       ',
    'Gigabyte B550I AORUS PRO AX, AMD B550, AM4, DDR4, PCIe 4.0, SATA3, Dual M.2, 2.5GbE, ax WiFi/BT5, USB 3.2 Gen2, Mini-ITX ',
    'ASRock B550M-ITX/ac, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, M.2, GbE, ac WiFi/BT 4.2, Mini-ITX     ',
    'ASUS ROG STRIX B550-I GAMING, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, 2.5GbE/ax Wifi, USB 3.2 Gen2 A+C, Mini-ITX ',
    'ASUS TUF GAMING B550M-PLUS AM4 2.5GbE/Wifi 6 mATX Motherboard + 500GB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle     ',
    'ASUS TUF GAMING B550M-PLUS AM4 2.5GbE mATX Motherboard + 500GB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle       ',
    'ASUS TUF GAMING B550M-PLUS (WI-FI), AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE/ax WiFi, Micro-ATX ',
    'MSI MAG B550M MORTAR WIFI, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, ax/BT5.1, Micro-ATX      ',
    'ASUS PRIME B550M-A, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, GbE, USB 3.2 Gen2 A, Micro-ATX       ',
    'ASRock B550M Steel Legend Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, Micro-ATX    ',
    'Gigabyte B550M AORUS PRO, AMD B550, AM4, DDR4, PCIe 4.0, Dual M.2, GbE, USB 3.2 Gen 2 A+C, MicroATX      ',
    'MSI MAG B550M BAZOOKA, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, GbE, USB 3.2 Gen1 A+C, Micro-ATX           ',
    'MSI B550M PRO-VDH WIFI, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, GbE, ac WiFi/BT 4.2, USB 3.2 Gen1 A+C, Micro-ATX         ',
    'Gigabyte B550M GAMING, AMD B550, AM4, DDR4, PCIe 4.0, 1x M.2, SATA3, Realtek GbE LAN, USB 3.2 Gen 1, mATX      ',
    'Gigabyte B550M AORUS ELITE, AMD B550, AM4, DDR4, PCIe 4.0, Dual M.2, Realtek GbE, USB 3.2 Gen 1, MicroATX      ',
    'ASRock B550M Pro4 Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, GbE, Micro-ATX       ',
    'Gigabyte B550M DS3H, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, GbE, USB 3.2 Gen1, Micro-ATX       ',
    'Gigabyte B550M H, AMD B550, AM4, DDR4, PCIe 4.0, 1x M.2, Realtek GbE LAN Chip, 4x USB 3.2 Gen1, mATX    ',
    'Gigabyte B550M S2H, AMD B550, AM4, DDR4, PCIe 4.0, 1x M.2, Realtek GbE LAN Chip, 4x USB 3.2 Gen1, mATX         ',
    'ASRock B550M-HDV Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, M.2 PCIe Gen4, GbE, Micro-ATX     ',
    'ASUS TUF GAMING B550M-PLUS, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, USB 3.2 Gen2, Micro-ATX   ',
    'MSI MAG B550M MORTAR, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, USB 3.2 Gen2, Mic          ',
    'ASUS PRIME B550M-K, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, GbE, USB 3.2 Gen2 A, Micro-ATX      ',
    'ASUS PRIME B550M-A (Wi-Fi), AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, GbE/ax WiFi, USB 3.2 Gen2 A, Micro-ATX       ',
    'ASUS ROG STRIX B550-F GAMING WiFi ATX Motherboard + AMD Ryzen 7 3700X 8-Core CPU Bundle    ',
    'ASUS ROG STRIX B550-F GAMING ATX Motherboard + AMD Ryzen 5 3600 6-Core CPU Bundle      ',
    'ASUS ROG STRIX B550-E GAMING AM4 2.5GbE/Wifi 6 ATX Motherboard + 1TB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle         ',
    'ASUS ROG STRIX B550-F GAMING AM4 2.5GbE/Wifi 6 ATX Motherboard + 1TB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle         ',
    'ASUS ROG STRIX B550-F GAMING AM4 2.5GbE ATX Motherboard + 1TB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle          ',
    'Gigabyte B550 AORUS MASTER, AMD B550, AM4, DDR4, PCIe 4.0, 3x M.2, 2.5GbE, Wi-Fi 6/BT5, USB 3.2 Gen 2, ATX     ',
    'Gigabyte B550 VISION D, AMD B550, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, GbE/WiFi 6 AX200, BT5, ATX     ',
    'ASUS TUF GAMING B550-PLUS AM4 2.5GbE ATX Motherboard + 500GB Corsair Force MP600 PCIe 4.0 M.2 SSD Bundle       ',
    'ASRock Phantom Gaming Velocita, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, ATX   ',
    'Gigabyte B550 AORUS PRO AC, AMD B550, AM4, DDR4, PCIe 4.0, SATA3, Dual M.2, 2.5GbE, ac WiFi/BT 4.2, USB 3.2 Gen2, ATX    ',
    'ASRock B550 Extreme4 Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, ATX    ',
    'Gigabyte B550 AORUS PRO, AMD B550, AM4, DDR4, PCIe 4.0 x16, Dual M.2, 2.5GbE LAN, USB 3.2 Gen 2, ATX      ',
    'ASRock B550 Steel Legend Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, ATX    ',
    'MSI MPG B550 GAMING EDGE WIFI, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, 2.5GbE, ax WiFi/BT 5.1, ATX             ',
    'ASUS PRIME B550-PLUS, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, GbE, USB3.2 Gen2 A+C, ATX        ',
    'MSI MPG B550 GAMING PLUS, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, GbE, USB 3.2 Gen2 A+C, ATX        ',
    'MSI B550-A PRO, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, GbE, USB 3.2 Gen2, ATX     ',
    'Gigabyte B550 AORUS ELITE, AMD B550, AM4, DDR4, PCIe 4.0, Dual M.2, Realtek 2.5GbE LAN, USB 3.2 Gen 2, ATX          ',
    'ASRock B550 Pro4 Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, GbE, ATX    ',
    'Gigabyte B550 GAMING X, AMD B550, AM4, DDR4, PCIe 4.0, Dual M.2, Realtek GbE LAN, USB 3.2 Gen 2, ATX        ',
    'ASRock B550 Phantom Gaming 4/ac, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, M.2, CrossFire, GbE, ac WiFi/BT 4.2, ATX      ',
    'ASRock B550 Phantom Gaming 4, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, GbE, ATX    ',
    'ASRock B550 Taichi Motherboard, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, ax WiFi/BT5, ATX   ',
    'ASUS ROG STRIX B550-E GAMING, AMD B550, AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, SLi/CrossFire, 2.5GbE/ax Wifi, ATX         ',
    'ASUS ROG STRIX B550-F GAMING (WI-FI), AMD B550, AM4, DDR4, PCIe 4.0, SATA3, Dual M.2, CrossFire, 2.5GbE/ax WiFi, ATX     ',
    'MSI MPG B550 GAMING CARBON WIFI, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, ax/BT5.1, ATX      ',
    'ASUS ROG STRIX B550-F GAMING, AMD B550, AM4, DDR4, PCIe 4.0, SATA3, Dual M.2, CrossFire, 2.5GbE, USB 3.2 Gen2 A+C, ATX   ',
    'MSI MAG B550 TOMAHAWK, AMD B550, S AM4, DDR4, SATA3, PCIe 4.0, Dual M.2, CrossFire, 2.5GbE, USB 3.2 Gen2, ATX          ',
    'ASUS TUF GAMING B550-PLUS, AMD B550, AM4, DDR4, PCIe 4.0, SATA3, Dual M.2, CrossFire, 2.5GbE, USB 3.2 Gen2 A+C, ATX      ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'Gigabyte AORUS AX370-GAMING K5, AMD X370, S AM4, DDR4, SATAe, M.2, 2-Way SLi/CrossFire, Intel GbE, USB 3.1 Gen2 A+C, ATX ',
    'ASRock X470 Taichi, AMD X470, S AM4, DDR4, SATA3, Dual M.2, 2-Way SLi/CrossFire, GbE, ac WiFi, USB 3.1 Gen2 A+C, ATX     ',
    'ASRock X470 Master SLI, AMD X470, S AM4, DDR4, SATA3, Dual M.2, 2-Way SLi/CrossFire, Intel GbE, USB 3.1 Gen2 A+C, ATX    ',
    'MSI X470 GAMING PLUS MAX, AMD X470, S AM4, DDR4, SATA3, Dual M.2, 3-Way CrossFire, GbE, USB 3.1 Gen2 Type-A, ATX         ',
    'ASRock X570D4I-2T Motherboard, AMD X570, AM4 PGA 1331, DDR4 SO-DIMM, PCIe 4.0, M.2, 10GbE, mITX      ',
    'ASUS ROG STRIX X570-I GAMING, AMD X570, AM4, DDR4, PCIe 4.0, SATA3, M.2, Intel GbE, ax WiFi, USB 3.2 Gen2 A+C, Mini-ITX  ',
    'Gigabyte X570 I AORUS PRO WIFI, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, Intel GbE, AX WiFi, USB 3.2 Gen2 A+C, Mini-ITX  ',
    'ASRock X570 Phantom Gaming ITX/TB3, AMD X570, AM4, DDR4, PCIe 4.0, M.2, GbE, ax WiFi, Thunderbolt 3, Mini-ITX            ',
    'ASRock X570M Pro4, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Intel GbE, USB 3.2 Gen2 A+C, MicroATX       ',
    '3XS X570 RGB Hardware Bundle, AMD Ryzen 9 3950X, ASUS ROG STRIX X570-F GAMING, 32GB DDR4, Corsair H100i RGB PLATINUM     ',
    '3XS X570 Hardware Bundle, AMD Ryzen 9 3950X, ASUS ROG STRIX X570-F GAMING, 32GB DDR4, AMD Wraith Prism RGB     ',
    '3XS X570 RGB Hardware Bundle, AMD Ryzen 9 3900X, ASUS ROG STRIX X570-F GAMING, 32GB DDR4, Corsair H100i RGB PLATINUM     ',
    '3XS X570 Hardware Bundle, AMD Ryzen 9 3900X, ASUS ROG STRIX X570-F GAMING, 32GB DDR4, AMD Wraith Prism RGB           ',
    'Gigabyte X570 AORUS XTREME, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/CrossFire, 10G/GbE/WiFi, USB 3.2, E-ATX ',
    'MSI MEG X570 GODLIKE, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/4-Way CrossFire, Killer 2.5G/GbE/WiFi, E-ATX  ',
    'Gigabyte X570 AORUS Elite ATX Motherboard + AMD Ryzen 9 3900X OEM CPU + Corsair Vengeance LPX 16GB 3200MHz RAM Bundle    ',
    'ASUS ROG Crosshair VIII Formula, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, 5G/GbE/WiFi, ATX    ',
    'ASUS TUF GAMING X570-PLUS ATX Motherboard + AMD Ryzen 7 3700X 8-Core CPU Bundle    ',
    'ASRock X570 Creator, AMD X570, AM4, DDR4 4666+, PCIe 4.0, M.2 SSD, GbE, ax WiFi, Thunderbolt 3ï¿½, ATX                     ',
    'MSI PRESTIGE X570 CREATION, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, 10G/GbE/WiFi, E-ATX      ',
    'ASUS ROG Crosshair VIII Hero (WI-FI), AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, 2.5G/WiFi, ATX ',
    'ASUS ROG Crosshair VIII Hero, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, 2.5G/GbE, USB 3.2, ATX ',
    'ASUS ROG Crosshair VIII IMPACT (WI-FI), AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2.5G/5Ghz WiFi 6, Mini-DTX              ',
    'ASUS PRIME X570-P ATX Motherboard + AMD Ryzen 5 3600 6-Core CPU Bundle     ',
    'ASRock X570 Phantom Gaming X, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/CrossFire, 2.5G/GbE/WiFi, USB3.2, ATX ',
    'MSI MEG X570 ACE, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/3-Way CrossFire, 2.5G/GbE/WiFi, USB 3.2, ATX      ',
    'Gigabyte X570 AORUS MASTER, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/CrossFire, 2.5G/GbE/WiFi, USB 3.2, ATX  ',
    'ASUS Pro WS X570-ACE, AMD X570, AM4, DDR4, PCIe 4.0, U.2, M.2, 2-Way SLI/3-Way CrossFire, GbE, USB 3.2 Gen2 A+C, ATX     ',
    'ASRock X570 Taichi, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/3-Way CrossFire, Intel GbE/WiFi, USB 3.2, ATX   ',
    'ASUS ROG STRIX X570-E GAMING, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, 2.5G/GbE/WiFi, ATX     ',
    'Gigabyte X570 AORUS ULTRA, AMD X570, AM4, DDR4, PCIe 4.0, Triple M.2, 2-Way SLi/CrossFire, Intel GbE, WiFi, USB 3.2,ATX  ',
    'MSI MEG X570 Unify, AMD X570, AM4, DDR4, PCIe 4.0, 3x M.2, SLI/CrossFire, 2.5GbE, USB 3.2 Gen2 A+C, ATX                  ',
    'ASUS PRIME X570-PRO, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, Intel GbE, USB3.2 Gen2 A+C, ATX ',
    'MSI MPG X570 GAMING PRO CARBON WIFI, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, GbE/WiFi, USB 3.2, ATX    ',
    'ASRock X570 EXTREME4, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Intel GbE, USB 3.2 Gen2 A+C, ATX         ',
    'Gigabyte X570 AORUS PRO, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/CrossFire, Intel GbE, USB 3.2 Gen2 A+C, ATX  ',
    'MSI MAG X570 TOMAHAWK WIFI, AMD X570, AM4, DDR4, PCIe 4.0, 2x M.2, CrossFire, 2.5GbE, ax/BT5.1, USB 3.2 Gen2 A+C, ATX    ',
    'ASUS TUF GAMING X570-PLUS, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen2 A+C, ATX  ',
    'MSI MPG X570 GAMING EDGE WIFI, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Realtek GbE, WiFi, USB 3.2,ATX  ',
    'ASRock X570 Pro4, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Intel GbE, USB 3.2 Gen2 A+C, ATX             ',
    'Gigabyte X570 GAMING X, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen1 A, ATX       ',
    'MSI MPG X570 GAMING PLUS, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen2 A+C, ATX   ',
    'Gigabyte X570 Ultra Durable, AMD X570, AM4, DDR4, PCIe 4.0, M.2, 2-Way CrossFire, GbE, USB 3.2 Gen1, ATX                 ',
    'ASRock X570 Phantom Gaming 4, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Intel GbE, USB 3.2 Gen2 A, ATX   ',
    'ASUS ROG STRIX X570-F GAMING, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way SLi/3-Way CrossFire, Intel GbE, USB3.2, ATX ',
    'ASUS TUF GAMING X570-PLUS (WI-FI), AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, GbE/WiFi, USB 3.2, ATX      ',
    'Gigabyte X570 AORUS ELITE, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Intel GbE, USB 3.2 Gen2 A, ATX      ',
    'ASRock X570 Steel Legend, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Intel GbE, USB 3.2 Gen2 A+C, ATX     ',
    'ASUS PRIME X570-P, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen2 A, ATX            ',
    'MSI X570-A PRO, AMD X570, AM4, DDR4, PCIe 4.0, Dual M.2, 2-Way CrossFire, Realtek GbE, USB 3.2 Gen2 A+C, ATX             ',
    'Gigabyte GC-TPM2.0_S, Trusted Platform Module, Infineon SLB9665 2048-bit Crypto Unit, for Intel X299/Z370, AMD X399/AM4  ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'ASRock X399D8A-2T, AMD X399, TR4, DDR4, SATA3, Dual M.2, Dual Intel 10GbE, PCIe Gen3, 2x USB 3.1 Gen 2, ATX      ',
    'ASRock X399M Taichi, AMD X399, TR4 Socket, DDR4, SATA3, 3x M.2, USB 3.1 Gen2, 802.11ac, GbE, MicroATX                    ',
    'Gigabyte X399 AORUS PRO, AMD X399, S TR4, DDR4, SATA3, Triple M.2, 4-Way SLi/CrossFire, Intel GbE, USB 3.1 Gen2 A+C, ATX ',
    'ASRock X399 Phantom Gaming 6, AMD X399, TR4, DDR4, SATA3, 3x M.2, SLI/CrossFire, USB 3.1 Gen2 A+C, 2.5GbE, ATX           ',
    'ASUS ROG Zenith Extreme Alpha, AMD X399, S TR4, DDR4, SATA3, Triple M.2, 3-Way SLi/CrossFire, 10G/GbE/WiFi, USB3.1,E-ATX ',
    'ASRock X399 Taichi, AMD X399, S TR4, DDR4, SATA3, U.2, Triple M.2, 4-Way SLi/CrossFire, Dual GbE, ac WiFi, USB 3.1, ATX  ',
    'ASUS ROG STRIX TRX40-E GAMING, AMD TRX40, sTRX4, DDR4, PCIe 4.0, 3xM.2, SLI/CrossFire, 2.5GbE, ax WiFi, USB3.2 Gen2, ATX ',
    'ASUS PRIME TRX40-PRO, AMD TRX40, sTRX4, DDR4, PCIe 4.0, 3x M.2, SLI/CrossFire, GbE, USB 3.2 Gen2 A+C, ATX                '
  ];
class _AMDState extends State<AMD> {
 
  @override
  Widget build(BuildContext context) {
     final id = Provider.of<MyCart1>(context);
    final String k = 'Motherboard';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () => {},
                  child: Card(color: Colors.redAccent[400], shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        child: ListTile(
                      onTap: () => {
                        id.add(k,amdmo[index]),
                        Navigator.pop(context),
                        //Navigator.push(context,
                      //  MaterialPageRoute(builder: (context) => Main()))
    
                      },
                      title: Text(amdmo[index]),
                      subtitle: Text(k),
                    )),
                  ));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: amdmo.length));
  }
}

class Intel extends StatefulWidget {
  @override
  _IntelState createState() => _IntelState();
}
 final List<String> intelmo = [
    'ASUS P11C-M4/L ,Socket 1151, Intel C242 Chipset, DDR4, SATA3, 2xM.2, Quad Gbe, 4xUSB3.1, VGA , Micro ATX',
    'ASUS WS C246 PRO, Intel C246, S1151, DDR4, SATA3, Dual M.2, 2-Way CrossFire, Dual Intel GbE, USB 3.1 A+C, ATX          ',
    'ASUS WS C246M PRO, Intel C246, S1151, DDR4, SATA3, M.2, Dual Intel GbE, USB 3.1 Gen2 A, MicroATX         ',
    'ASUS P11C-C/4L Xeon ,Socket 1151, Intel C242 Chipset, DDR4, SATA3, 2 x M.2, Quad Gbe, 4 x USB3.1,VGA , ATX         ',
    'Supermicro X11SSH Server Board, Single socket H4 (LGA 1151), Supports Intel Xeon processor E3-1200 v5     ',
    'ASUS P11C-I Xeon ,Socket 1151, Intel C242 Chipset, DDR4, SATA3, M.2, Dual Gbe, 4xUSB3.1, ,VGA , Mini-ITX            ',
    'Supermicro MBD-X11SSM-F, Intel C236, S1151, DDR4-2133MHz, SATA III - 6Gb/s, 5x USB 3.0, Dual GbE + IPMI + KVM, Micro ATX ',
    'ASUS P11C-X Xeon ,Socket 1151,  Intel C242 Chipset, DDR4, SATA3, 2xM.2, Dual Gbe, 2xUSB3.1, 2xUSB3.0, 2xUSB2.0,VGA , ATX ',
    'Gigabyte Intel C246-WU4 XEON Server Motherboard, DDR4, PCIe (x16), Dual M.2, USB 3.1 Gen 2 Type-C, 10x SATA 6GB/s Ports  ',
    'Supermicro X11SAE-M, Intel C236, S1151, DDR4, SATA3 6Gbps, M.2 (PCIe), Dual Intel Gigabit LAN, USB 3.1 A, Micro ATX      ',
    'Gigabyte Intel C246M-WU4 XEON MicroATX Server Motherboard, supports DDR4 ECC, PCIe (x16), Dual Intel Server GbE LAN      ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'Gigabyte MD80-TM0 Intel Haswell-EP Socket 2011-3 x2 Server Board, 10x SATA 6Gbps, 8x SAS, 2x 10GbE LAN, M.2,24x DDR4 EEC ',
    'Gigabyte MD60-SC0 Intel Haswell-EP Socket 2011-3 x2 Server Board, 10xSATA 6Gbps, 8xSAS, 2xGbE LAN, 16xDDR4 EEC, ATX      ',
    'Supermicro MBD-X10DRH-IT-O, Intel C612, 2x S LGA 2011, DDR4, SATA III, 5x USB3.0, 4x USB2.0, 6x PCI-E 3.0 x8      ',
    'Supermicro MBD-X10DRi-T-O Intel C612, S2011-3 x2, DDR4, PCIe 3.0 (x16), D-Sub (VGA), 2x GbE, USB3, Micro E-ATX           ',
    'ASUS Z10PA-U8/10G, Intel C612 PCH, S 2011-3, DDR4, SATA3 6Gbps, M.2 (SATA), Aspeed AST2400, Dual GbE, Mgmt LAN, ATX     ',
    'Supermicro MBD-X10DAX-O, Intel C612, S 2011-3 x2, DDR4, SATA III 6Gb/s, SATA RAID, PCIe 3.0 (x16), E-ATX Motherboard     ',
    'Supermicro MBD-X10DRI, Intel C612, S2011-3 x2, DDR4 PCIe 3.0 (x16), 2x GbE, D-Sub (VGA), E-ATX Server Motherboard        ',
    'Gigabyte MD50-LS0 Socket 2011-3 Intel Haswell-EP Server Board, 10x SATA 6Gbps, 8x SAS, 4x GbE LAN, 8x DDR4 EEC slots     ',
    'Gigabyte MU70-SU0 Socket 2011-3 Intel Haswell-EP Server Board, 9x SATA,8x SAS, 4x GbE Lan, mSATA, 12x DDR4 EEC slots     ',
    'Supermicro X10SRA-F, Intel C612, S 2011-3, DDR4, SATA3, PCIe 3.0 x16, PCIe 2.0 x4 (x1), Dual Intel GbE, USB 3.0, ATX     ',
    'Gigabyte MW50-SV0 Socket 2011-3 Server Board Intel Haswel-EP, 8x SATA 6Gbps, 2x GbE Lan, mSATA, 8x DDR4 EEC slots, ATX   ',
    'SuperMicro Server Motherboard LGA, Single 2011 R3, Up to 512GB ECC DDR4 2133MHz LRDIMM; 8x DIMM sockets        ',
    'Supermicro X10SRL-F Server Motherboard, Single socket LGA 2011      ',
    'Gigabyte MW70-3S0 Workstation, Intel C612, 2x S 2011-3, DDR4, SATA III, 3-Way SLi/CrossFireX, Intel LAN, USB 3.0, E-ATX  ',
    'Supermicro MBD-X10DRL-IT-O, Intel C612, S2011-3 x2, DDR4, PCIe 3.0 (x16), SATA3, 2x 10 GbE, D-Sub (VGA), ATX Motherboard ',
    'Supermicro MBD-X10DAI-O Server Board, Intel C612, S 2011-3 x2, DDR4, SATA III 6Gb/s, PCIe 3.0, Gb LAN, E-ATX, Retail     ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'ASUS WS C422 SAGE/10G, Intel C422, S 2066, DDR4, SATA3, Dual U.2, Dual M.2, 4-Way SLi/CrossFire, Dual 10GbE, USB3.1, CEB ',
    'ASUS WS C422 PRO/SE, Intel C422, S 2066, DDR4, SATA3, U.2, Dual M.2, 3-Way SLi/CrossFire, Dual GbE, USB3.1 Gen2 A+C, ATX ',
    'Gigabyte MW51-HP0, Intel C422, S 2066, DDR4, SATA3, U.2, M.2, SLi/CrossFire, Dual Intel GbE, USB 3.1 Gen2 A+C, CEB       ',
    'Supermicro A2SDi-4C-HLN4F, System-on-Chip, S Integrated CPU, DDR4 RDIMM/LRDIMM, SATA3, USB 3.0, Mini-ITX       ',
    'Supermicro X11SRA, Intel C422, S 2066, DDR4, SATA3, Dual U.2, Dual M.2, Aquantia 5GbE, Intel GbE, USB 3.1 Gen2 A, ATX    ',
    'Fujitsu D3598-B, Intel C422, S 2066, DDR4, SATA3, M.2, Dual GbE, USB 3.1 Gen2 A+C, ATX             ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'ASUS Xeon WS C621-64L SAGE, Intel C621, S-3647 Workstation, Dual 10G LAN, M.2, SLi/CrossFire USB 3.2 A+D         ',
    'Supermicro X11DPH-T, Intel C624, S 3647 x2, 16x DDR4, SATA3, PCIe 3.0 x16/x8, Dual M.2 (PCIe), Dual 10GbE, USB 3.0, EATX ',
    'ASUS WS C621E SAGE, Intel C621, S 3647 x2, DDR4, SATA3, Quad U.2, M.2, 4-Way SLi/CrossFire, Dual GbE, USB 3.1 A+C, EEB   ',
    'ASUS WS C621-64L SAGE, Intel C621, S 3647, DDR4, SATA3, M.2, SLi/CrossFire, Dual GbE, USB 3.2 A+C, CEB          ',
    'Asus Z11PR-D16, 2 x Socket P (3647), Intel C621, DDR4 RDIMM/LRDIMM, EEB Sever Motherboard          ',
    'Supermicro X11DPI-N, Intel C621, S 3647 x2, DDR4, SATA3, M.2 (PCIe), Dual NVMe Internal Ports, Dual GbE, USB 3.0, E-ATX  ',
    'Asus Z11PA-U12/10G-2S (ASMB9-IKVM), LGA 3647, DDR4, M.2, Dual 10 GbE SFP+, USB 3.0, ATX     ',
    'ASUS Z11PA-D8 ,2 x Socket P (3647), Intel C621, DDR4 RDIMM/LRDIMM, CEB Sever Motherboard             ',
    'Supermicro X11DAI-N Motherboard , Intel C621, S 3647 x2, DDR4 RDIMM/LRDIMM, E-ATX (12" x 13"), 4x USB3.0, 2X USB3.1   ',
    'Gigabyte Intel C621-WD12 Dual Scalable Xeon EEB Server Motherboard, 6-Channel DDR4, 12 DIMMs, 2x 3647 Socket, 7x PCIe 3  ',
    'Asus Z11PA-U12 XEON Motherboard             ',
    'Supermicro X11SPM-TF-O, Intel C622, S 3647, DDR4, SATA3, M.2 PCIe, Dual Intel 10GbE, USB 3.0, MicroATX     ',
    'ASRock EPC621D8A, Intel C621, S 3647, 8x DDR4, SATA3, PCIe 3.0 x16/x8/x4, Dual M.2, Quad GbE, Mgmt LAN, USB 3.0, ATX     ',
    'Supermicro X11SPL-F, Intel C621, LGA 3647, DDR4, SATA3, M.2, PCI-E, ATX        ',
    'ASUS IPMI 2.0 Management Upgrade Kit with KVM (Keyboard, Video, Mouse)                        ',
    'AsRock W480 Creator, Intel W480, s 1200, DDR4, SATA3, 3x M.2, CrossFire, 10GbE, 2.5GbE, 802.11ax WiFi, USB 3.2 Gen2, ATX ',
    'ASUS Pro WS W480-ACE, Intel W480, S 1200, DDR4, SATA3, Dual M.2, CrossFire, 2.5GbE, USB 3.2 Gen2, ATX    ',
    'Intel Core i7 7740X, S 2066, Kaby Lake-X, Quad Core, 8 Thread, 4.3GHz, 4.5GHz Turbo, 8MB, 16 Lane, 112W, CPU, Retail     ',
    'Thermaltake Pacific M4 Monoblock, Copper+PMMA, AURA SYNC, ASUS TUF X299 MARK I Motherboard                  ',
    'Gigabyte GC-TPM2.0_S, Trusted Platform Module, Infineon SLB9665 2048-bit Crypto Unit, for Intel X299/Z370, AMD X399/AM4  ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'ASUS ROG Rampage VI Extreme Encore, Intel X299, S 2066, DDR4, SATA3, Quad M.2, SLi/CrossFire, USB 3.2 Gen2 A+C, E-ATX    ',
    'ASUS WS X299 SAGE/10G, Intel X299, S 2066, DDR4, SATA3, U.2, Dual M.2, 4-Way SLi/CrossFire, Dual Intel 10GbE, USB3.1,CEB ',
    'Gigabyte X299X Designare 10G, S 2066, DDR4, SATA3, 3x M.2, SLi/CrossFire, 10GbE, USB 3.2, E-ATX           ',
    'ASUS Prime X299 Edition 30, Intel X299, S2066, DDR4, SATA3, x3 M.2, 4-Way SLi/CrossFire, USB 3.2 A+C, Thunderbolt3       ',
    'ASUS WS X299 SAGE, Intel X299, S 2066, DDR4, SATA3, Dual U.2, Dual M.2, 4-Way SLi/CrossFire, Dual GbE, USB 3.1 A+C, CEB  ',
    'MSI Creator X299, Intel X299, S2066, DDR4, SATA3, M.2, 4-Way SLi/CrossFire, USB 3.2 Type-C, USB 3.1 Type-A           ',
    'Gigabyte X299X AORUS MASTER, S 2066, DDR4, SATA3, 3x M.2, SLi/CrossFire, 10GbE, USB 3.2, E-ATX                ',
    'ASUS PRIME X299-DELUXE II, Intel X299, S 2066, DDR4, SATA3, Triple M.2, 3-Way SLi/CrossFire, 5GbE/GbE/WiFi, TB3, ATX     ',
    'ASRock X299 Creator, Intel X299, S 2066, DDR4, SATA3, Triple M.2, 3-Way SLi/CrossFire, Intel GbE, USB 3.2 A+C, ATX    ',
    'ASRock X299 OC Formula, Intel X299, S 2066, DDR4, SATA3, Dual M.2, 4-Way SLi/CrossFire, Dual GbE, USB 3.1 Gen2 A+C, ATX  ',
    'ASUS ROG Strix X299-E Gaming II, Intel X299, S 2066, DDR4, SATA3, x3 M.2, 3-Way SLi/CrossFire, USB 3.2 A+C, ATX          ',
    'ASUS WS X299 PRO, Intel X299, S 2066, DDR4, SATA3, U.2, Dual M.2, 3-Way SLi/CrossFire, Dual GbE, USB 3.1 Gen2 A+C, ATX   ',
    'EVGA FTW K X299, Intel X299, S 2066, DDR4, SATA III, Dual M.2/U.2, 3-Way SLI, Intel/Killer GbE, USB 3.1 Type-A/C, E-ATX  ',
    'MSI X299 Pro 10G, S 2066, DDR4, SATA3, 2x M.2, SLi, CrossFire, 10GbE, USB 3.2 Type A+C, ATX          ',
    'ASUS PRIME X299-A II, Intel X299. S 2066, DDR4, SATA3, Triple M.2, 4-way SLI/CrossFire, USB 3.2 G2 A+C, ATX              ',
    'ASUS TUF X299 MARK 2, Intel X299, S 2066, DDR4, SATA3, Dual M.2, 3-Way SLi/CrossFire, Intel GbE, USB 3.1 Gen2 A, ATX     ',
    'ASRock X299 Steel Legend, Intel X299, S 2066, DDR4, SATA3, Dual M.2, 3-Way SLi/CrossFire, Intel GbE, USB 3.2 A+C, ATX    ',
    'MSI X299-A PRO, Intel X299, S 2066, DDR4, SATA3, Dual M.2, CrossFire/SLi, Intel GbE, USB 3.2 Gen2 A+C, ATX       ',
    'Gigabyte X299X AORUS XTREME WATERFORCE, Intel X299, S 2066, DDR4, SATA3, 3x M.2, SLi/CrossFire, USB 3.2 Gen2, XL-ATX     ',
    'ASUS WS X299 PRO/SE, Intel X299, S 2066, DDR4, SATA3, U.2, Dual M.2, 3-Way SLi/CrossFire, Dual GbE, USB3.1 Gen2 A+C, ATX ',
    'ASRock Taichi CLX, Intel X299, S 2066, DDR4, SATA3, 3x M.2, Intel GbE, 3-Way SLI/2-Way CrossFireX, 802.11ax, BT5, ATX    ',
    'MSI X299 Pro, Intel X299. S2066, DDR4, SATA3, x2 M.2, 3-way SLi/CrossFire, USB 3.2 Type A+C                ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'Gigabyte GA-H110-D3A Crypto Mining, Intel H110, S 1151, DDR4, SATA3, M.2, GbE, USB 3.1, ATX                              ',
    'BIOSTAR DCBTC2, PCI-E X1 Crypto Mining Expansion Card, PCIe x1 to 4x PCIe USB 3.0, Connect upto 4x GPU, for BIOSTAR Mobo ',
    'Silverstone CA02 Screw Pack, Case screws, Washers and cable ties                           ',
    'Gigabyte B250-FinTech, Miner, Intel B250, S 1151, DDR4, PCIe 3.0 x16 + 11x PCIe x1, SATA3, Realtek GbE, USB3.1 G1 A, ATX ',
    'ASUS PRIME H310T R2.0/CSM, Intel H310, S 1151, DDR4 SO-DIMM, SATA3, M.2, Realtek GbE, USB 3.1 Gen1 A, Thin Mini-ITX      ',
    'ASUS Intel PRIME H310I-PLUS R2.0, Intel H310, S 1151, DDR4, SATA3, M.2, Realtek GbE, USB 3.1 Gen1 A, Mini-ITX            ',
    'ASUS PRIME H310M-E R2.0, Intel H310, S 1151, DDR4, SATA3, M.2, Realtek GbE, USB 3.1 Gen1 A, MicroATX                   ',
    'Gigabyte H310M-H R2.0 Intel H310, s1151, DDR4, SATA3, GbE, USB 3.1, MicroATX          ',
    'Gigabyte H310M S2V 2.0, Intel H310, S 1151, DDR4, SATA3, Realtek GbE, USB 3.1 Gen1 A, MicroATX             ',
    'Gigabyte H310M S2H 2.0, Intel H310, S 1151, DDR4, SATA3, Realtek GbE, USB 3.1 Gen1 A, MicroATX                   ',
    'Gigabyte H310M S2P, Intel H310, S 1151, DDR4, SATA3, M.2, Realtek GbE, USB 3.1 Gen1 A, MicroATX                          ',
    'ASUS PRIME H310M-A R2.0, Intel H310, S 1151, DDR4, SATA3, M.2, Realtek GbE, USB 3.1 Gen1 A, MicroATX                     ',
    'ASRock H310CM-HDV, Intel H310, S 1151, DDR4, SATA3, Realtek GbE, USB 3.1 Gen1 A, MicroATX                          ',
 
    '3XS B460 Hardware Bundle, Intel Core i7 10700F, ASUS TUF B460-PLUS, 16GB DDR4           ',
    '3XS B460 Hardware Bundle, Intel Core i5 10400F, ASUS TUF B460-PLUS, 16GB DDR4, 3XS AIO Liquid Cooler     ',
    'ASUS ROG STRIX B460-H GAMING ATX Motherboard + Intel Core i5 10600K 6-Core CPU Bundle     ',
    '3XS B460 Hardware Bundle, Intel Core i5 10400F, ASUS TUF B460-PLUS, 16GB DDR4           ',
    'ASUS PRIME B460M-A MicroATX Motherboard + Intel Core i5 10400F 6-Core CPU Bundle        ',
    'Gigabyte B460 AORUS PRO AC, Intel B460, S 1200, DDR4, SATA3, Dual M.2, 2.5GbE, ac WiFi/BT5, USB 3.2 Gen1, ATX      ',
    'ASUS ROG STRIX B460-F GAMING, Intel B460, S 1200, DDR4, SATA3, Dual M.2, CrossFire, GbE, USB 3.2 Gen2, ATX         ',
    'ASUS ROG STRIX B460-H GAMING, Intel B460, S 1200, DDR4, SATA3, Dual M.2, CrossFire, GbE, USB 3.2 Gen2, ATX      ',
    'ASUS TUF Gaming B460-PRO (Wi-Fi), Intel B460, S 1200, DDR4, SATA3, Dual M.2, Crossfire, GbE, ax Wi-Fi, USB 3.2 Gen2, ATX ',
    'ASRock B460 Steel Legend, Intel B460, S 1200, DDR4, SATA3, 3x M.2, 2-Way CrossFire, 2.5G LAN, USB 3.2 Gen 1 A+C, ATX     ',
    'MSI MAG B460 TOMAHAWK, Intel B460, S 1200, DDR4, SATA3, Dual M.2, CrossFire, 2.5/1GbE, USB 3.2 Gen2, ATX           ',
    'ASUS TUF Gaming B460-PLUS, Intel B460, S 1200, DDR4, SATA3, Dual M.2, Crossfire, GbE, ax Wi-Fi, USB 3.2 Gen1, ATX        ',
    'ASRock B460 PRO4, Intel B460, S 1200, DDR4, SATA3, PCIe 3.0, 3x M.2, USB 3.2 Gen 1 A+C, ATX      ',
    'ASUS PRIME B460-PLUS, Intel B460, S 1200, DDR4, SATA3, Dual M.2, CrossFire, Intel GbE, USB 3.2, ATX           ',
    'ASRock B460 PHANTOM GAMING 4, Intel B460, S 1200, DDR4, SATA3, 2x M.2, 4x USB 3.2 Gen1 Type-A, ATX             ',
    'Gigabyte B460 HD3, Intel B460, S 1200, DDR4, SATA3, Dual M.2, GbE, USB 3.2 Gen1, ATX           ',
    'MSI MEG Z490-I UNIFY, Intel Z490, S 1200, DDR4, SATA3, Dual M.2, 2.5GbE, ax WiFi/BT 5.1, USB 3.2 Gen2/TB3, Mini-ITX      ',
    'ASRock Z490M-ITX/ac, Intel Z490, S 1200, DDR4, SATA3, Dual M.2, 2.5GbE, ac WiFi, USB 3.2 Gen2, Mini-ITX            ',
  ];
class _IntelState extends State<Intel> {
 
  @override
  Widget build(BuildContext context) {
     final id = Provider.of<MyCart1>(context);
    final String k = 'Motherboard';
    return Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return GestureDetector(
                  onTap: () => {},
                  child: Card(color: Colors.redAccent[700], shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        child: ListTile(
                      onTap: () => {
                        id.add(k,intelmo[index]),
                        Navigator.pop(context),
                       // Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => Main()))
    
                      },
                      title: Text(intelmo[index]),
                      subtitle: Text(k),
                    )),
                  ));
            },
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: intelmo.length));
  }
}
