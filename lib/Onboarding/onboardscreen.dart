import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nestpro/Colors.dart';
import 'package:nestpro/Maindashboard/maindashboard.dart';

import '../../Model/onboardmodel.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;
  bool timerComplete = false;
  PageController  _controller = PageController();
  //
  @override
  void initState(){
    _controller = PageController();



    super.initState();
  }
  // @override





  Widget build(BuildContext context) {

    Timer.periodic(Duration(seconds: 5), (timer){
      print(currentIndex.toString() + ' ' + contents.length.toString());
      if(currentIndex < contents.length -1 && !timerComplete){
        setState(() {

            currentIndex ++;
            _controller.jumpToPage(currentIndex);


        });


      }else{

      timer.cancel();
      setState(() {
        timerComplete = true;
      });
      }


    });


    return SafeArea(
        child: Scaffold(
          backgroundColor: Bgcolor,
         body: Container(
           child: PageView.builder(
              controller: _controller,
               itemCount: contents.length,
               onPageChanged: (int index){
                 setState(() {
                   currentIndex = index;
                 });
               },
               itemBuilder: (_,i){

                 return Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [

                     Buildot(),
                     Image.asset(contents[i].image2!,height: 320,),

                     InkWell(
                         onTap: (){
                           Get.to(MainDashboard());
                         },
                         child: Image.asset(contents[i].image1!)),



                   ],
                 );

           }),
         ),
          ),

        );
  }

  Container Buildot() {
    return Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:
                       List.generate(contents.length,((index) =>
                           Stack(
                             children :[
                               Container(
                                 height: 10,width: 80,
                                 child: LinearProgressIndicator(backgroundColor: Slbarclor,
                                   valueColor: AlwaysStoppedAnimation<Color>(Slbarclorr),),
                               ),
                               Container(
                               height: 10,
                               width: currentIndex == index ? 40:0,
                               margin: EdgeInsets.only(right: 40,),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: Slbarclor
                               ),
                             ),]
                           )
                       )
                       ),

                     ),
                   );
  }
}
