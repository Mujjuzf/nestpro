
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  late Animation _arrowAnimation;
  late AnimationController _arrowAnimationController;


  @override
  void initState() {
    super.initState();
    _arrowAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Animations'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          firstChild(),
        ],
      ),
    );


  }
  Widget firstChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        AnimatedBuilder(
          animation: _arrowAnimationController,
          builder: (context, child) => Transform.rotate(
            angle: _arrowAnimation.value,
            child: Icon(
              Icons.expand_more,
              size: 50.0,
              color: Colors.black,
            ),
          ),
        ),
        OutlineButton(
          color: Colors.white,
          textColor: Colors.black,
          padding: const EdgeInsets.all(12.0),
          child: Text('Start Icon Animation'),
          onPressed: () {
            _arrowAnimationController.isCompleted
                ? _arrowAnimationController.reverse()
                : _arrowAnimationController.forward();
          },
          splashColor: Colors.red,
        )
      ],
    );
  }
}