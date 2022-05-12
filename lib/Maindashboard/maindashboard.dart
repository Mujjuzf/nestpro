import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nestpro/Colors.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  @override
  Widget build(BuildContext context) {

    final items = <Widget>[

   Icon(Icons.home,color: Bgcolor,)


    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Bgcolor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Bgcolor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
             Image.asset("asset/profileimg.png"),
              Stack(children: [
                Image.asset("asset/timerimg.png"),
              Padding(
                padding:   EdgeInsets.only(left: 40.0,top: 38),
                child: Container(
                  height: 30,width: 80,color: Bgcolor,
                  child: Row(
                    children: [
                      Image.asset("asset/bitcoincard.png"),
                      SizedBox(width: 5),
                      Text("1.32 SAT",style: TextStyle(color: Colors.white,fontSize: 13),),
                    ],
                  ),
                ),
              ),
                Padding(
                  padding:   EdgeInsets.only(left: 115.0,top: 25),
                  child: CircleAvatar(
                    backgroundColor: Slbarclor,
                    radius: 8,
                    child: Icon(Icons.add,size: 12,),
                  ),
                ),
              ]),
              // ElevatedButton(onPressed: (){}, child: Row(
              //   children: [
              //     Image.asset("asset/bitcoincard.png"), Text("1.32M SAT"),],), style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Bgcolor)),),

                Stack(children: [

                  Image.asset('asset/notibell.png',),
                  Padding(
                    padding:   EdgeInsets.only(left: 52.0,top: 41),
                    child: CircleAvatar(
                      backgroundColor: Slbarclor,
                      radius: 5,
                      child: Text("5",style: TextStyle(fontSize: 5),),
                    ),
                  ),

                ]),
            ],
          ),
            elevation : 0,
          centerTitle: true,
        ),

        // bottomNavigationBar: Padding(
        //   padding:   EdgeInsets.only(bottom: 15.0),
        //   child: FloatingActionButton.extended(
        //
        //     onPressed: (){}, label:Image.asset("asset/bottomnvg.png"),backgroundColor:Colors.transparent ,),
        // ),
          body: Stack(
            children:[

              SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("asset/intro4.png"),
                  Image.asset("asset/intro4.png"),
                  Image.asset("asset/intro4.png"),
                  Image.asset("asset/intro4.png"),
                  Image.asset("asset/intro4.png")],
              ),
            ),
              Padding(
                padding:   EdgeInsets.only(top: 640.0,left: 32),
                child: FloatingActionButton.extended(

                  onPressed: (){}, label:Image.asset("asset/bottomnvg.png"),backgroundColor:Colors.transparent ,),
              ),
            ]
          ),
          ),
    );
  }
}
