import 'package:flutter/material.dart';

import 'home_screen.dart';

class allscreen extends StatefulWidget {
  @override
  State<allscreen> createState() => _allscreenState();
}

class _allscreenState extends State<allscreen> {
  int _selectindex = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  List classes = [
    const Main_screen(key: PageStorageKey('Main_screen')),
    const Center(child: Text('Update Soon')),
    const Center(child: Text('Update soon')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.qr_code),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                foregroundImage: AssetImage('assets/images/s1.jpg'),
              ),
            ),
          ],
          title: const Text('Stcoks'),
          elevation: 0,
          backgroundColor: const Color(0xFF101010),
          leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset('assets/images/groww_logo.jpg')),
        ),
        body: Center(
          child: PageStorage(bucket: _bucket, child: classes[_selectindex]),
        ),
        backgroundColor: const Color(0x00101010),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          enableFeedback: true,
          backgroundColor: const Color.fromARGB(255, 25, 24, 24),
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 15,
          currentIndex: _selectindex,
          unselectedFontSize: 10,
          onTap: (value) => setState(() => _selectindex = value),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: 'Stocks',
                icon: Icon(Icons.bar_chart_rounded)),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: 'Mutal Funds',
                icon: Icon(Icons.pie_chart)),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: 'Pay',
                icon: Icon(Icons.payment)),
          ],
        ));
  }
}
