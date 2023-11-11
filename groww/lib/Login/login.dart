// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, use_build_context_synchronously
import 'dart:async';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:groww/constant.dart';
import '../authantication/auth.dart';
import '../homepage/bottom.dart';
import '../homepage/home_screen.dart';
import '../homepage/test.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: kpadding.padding,
                child:
                    Text('Together We Groww', style: TaxtTheme.headlineMedium),
              ),
              SizedBox(height: 10.h),
              Text('''Groww - UI - Clone''', style: TaxtTheme.titleMedium),
              SizedBox(height: 20.h),
              Image.asset("assets/images/s1.jpg",
                  filterQuality: FilterQuality.high, fit: BoxFit.cover),
              SizedBox(height: 10.h),
              Container(
                height: 54.h,
                width: double.infinity.w,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                    ),
                    onPressed: () async {
                      //   bool Auth = await auth.authantication();
                      //   print("Can Authentication$Auth");
                      //   if (Auth) {
                      Dialog_alert(context);
                      start_timer();
                      // }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png",
                            width: 28, gaplessPlayback: false),
                        SizedBox(width: 10.w),
                        const Text("Continue With Google",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    )),
              ),
              SizedBox(height: 10.h),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => test()));
                },
                child: const Text(
                  'Use Other Email ID',
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed),
                ),
              ),
              SizedBox(height: 10.h),
              const Text(
                  """By Proceeding, I accept Groww's T&C Privacy Policy & Triff Rates""",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  Future<Timer> start_timer() async {
    var duation = const Duration(seconds: 3);
    return Timer(
      duation,
      () async => await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => allscreen()),
      ),
    );
  }
}

Dialog_alert(context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (ctx) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: const Center(
          child: CircularProgressIndicator(
              backgroundColor: Colors.tealAccent,
              valueColor: AlwaysStoppedAnimation(Colors.deepPurpleAccent),
              strokeWidth: 5),
        )),
  );
}
