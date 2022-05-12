import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Colors.dart';
import '../Onboarding/onboardscreen.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){

      Get.offAll(OnboardScreen());

    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Bgcolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Center(child: Image.asset("asset/logo.png")),
            SizedBox(height: 200),
            Padding(
              padding:   EdgeInsets.only(bottom: 30),
              child: InkWell(
                  child: Text("NEST",style: TextStyle(color: Colors.white,fontSize: 35),)),
            ),

          ],
        ),
      ),

    );
  }
}
