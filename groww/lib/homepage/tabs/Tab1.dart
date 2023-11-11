// ignore_for_file: file_names, prefer_typing_uninitialized_variables, camel_case_types, non_constant_identifier_names, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:groww/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class tab_explore extends StatefulWidget {
  const tab_explore({super.key});

  @override
  State<tab_explore> createState() => tab_exploreState();
}

class tab_exploreState extends State<tab_explore> {
  List companydetail = [
    Modelhome(
      img: "assets/images/Mahindara.png",
      title: "Mahindra",
      price: "₹50.10",
      up_status: "0.55(1.38%)",
      down_status: '-0.20(0.25%)',
    ),
    Modelhome(
      img: "assets/images/Meta.png",
      title: "Meta(FB)",
      price: "₹88.55",
      up_status: "0.30(4.38%)",
      down_status: '-0.43(5.25%)',
    ),
    Modelhome(
      img: "assets/images/tata.jpg",
      title: "TATA",
      price: "₹201.55",
      up_status: "0.30(8.30%)",
      down_status: '-0.05(0.25%)',
    ),
    Modelhome(
      img: "assets/images/googlelogo.png",
      title: "Google(IND)",
      price: "44.10",
      up_status: "0.22(4.10%)",
      down_status: '-0.26(0.87%)',
    ),
  ];
  bool tap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 90, 0),
            child: Text("Most bought on Groww",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          ),
          SizedBox(height: 5.h),
          Container(
            margin: const EdgeInsets.all(10),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: companydetail.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.white.withOpacity(0.2)),
                      ),
                      margin: const EdgeInsets.all(5),
                      color: const Color(0x00141519),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 40,
                                  width: 50,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.asset(companydetail[index],
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(15),
                                      vertical: ScreenUtil().setHeight(0)),
                                  child: Text(companydetail[index],
                                      style: TaxtTheme.titleMedium)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 15),
                                child: Text('₹50.10',
                                    style: TaxtTheme.titleMedium),
                              ),
                              InkWell(
                                onTap: () => setState(() => tap = !tap),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: ScreenUtil().setHeight(10),
                                      horizontal: ScreenUtil().setWidth(15)),
                                  child: tap
                                      ? const Text('0.55(1.38%)',
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontWeight: FontWeight.w600))
                                      : const Text('-10.0.50%',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ]),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}

class Modelhome {
  var img;
  String title;
  String price;
  String up_status;
  String down_status;
  Modelhome({
    required this.img,
    required this.title,
    required this.price,
    required this.down_status,
    required this.up_status,
  });
}
