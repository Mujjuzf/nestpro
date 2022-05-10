import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nestpro/Colors.dart';

import '../../Model/onboardmodel.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Bgcolor,
         body: PageView.builder(
             itemCount: contents.length,
             itemBuilder: (_,i){

               return Column(
                 children: [
                   Image.asset(contents[i].image2!,height: 320,),
                   Image.asset(contents[i].image1!),

                 ],
               );

         }),
          ),

        );
  }
}
