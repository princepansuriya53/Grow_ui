// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:groww/homepage/tabs/Tab1.dart';
import 'package:groww/homepage/tabs/Tab2.dart';
import '../widgets.dart';

class Main_screen extends StatefulWidget {
  const Main_screen({super.key});

  @override
  State<Main_screen> createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF101010),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CommonData().tradtab(
                          title: "NIFTY 50",
                          price: "19,100,70",
                          calprice: "40.20(0.21%)"),
                      CommonData().tradtab(
                          title: "BANK NIFTY",
                          price: "43,856.50",
                          calprice: "32.65(0.008%)"),
                      CommonData().tradtab(
                          title: "SENSEX",
                          price: "85,450.50",
                          calprice: "32.65(0.008%)"),
                    ],
                  )),
            ),
            TabBar(
              padding: const EdgeInsets.all(20),
              unselectedLabelColor: const Color.fromARGB(179, 104, 100, 100),
              isScrollable: true,
              indicator: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: Colors.white.withOpacity(0.8),
                    strokeAlign: 1.5,
                    width: 0.50),
              ),
              splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
              tabs: const [
                Tab(text: 'Explore'),
                Tab(text: 'Holding'),
              ],
              splashBorderRadius: BorderRadius.circular(20),
            ),
            Expanded(
              child: TabBarView(children: [
                tab_explore(),
                tab_holding(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
