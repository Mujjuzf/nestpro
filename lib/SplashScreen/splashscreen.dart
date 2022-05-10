import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Colors.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
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
              child: Text("NEST",style: TextStyle(color: Colors.white,fontSize: 35),),
            )
          ],
        ),
      ),

    );
  }
}
