// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant.dart';

class CommonData {
  Widget tradtab({
    required String title,
    required String price,
    required String calprice,
  }) {
    return SizedBox(
      height: 71.h,
      width: 220.w,
      child: Card(
          margin: const EdgeInsets.all(11),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color.fromARGB(255, 44, 41, 41))),
          color: const Color(0x00141519),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 10.h),
                  child: Text(title, style: TaxtTheme.bodyMedium),
                ),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 10.h),
                    child: Text(price, style: TaxtTheme.bodySmall),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 10.h),
                      child: Text(calprice,
                          style: const TextStyle(color: Colors.teal)))
                ]),
              ])),
    );
  }
}
