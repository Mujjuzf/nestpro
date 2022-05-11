import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nestpro/Colors.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
      Icon(Icons.home,size: 30),
   Image.asset("asset/bottomnvg.png"),

    Icon(Icons.home,size: 30),
    ];
    return Scaffold(
      backgroundColor: Bgcolor,
      appBar: AppBar(
        title: Text("Curved Navigation Bar"),
          elevation : 0,
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red
        ),
        child: CurvedNavigationBar(
          items: items,
          color: Colors.white,
          buttonBackgroundColor: Slbarclor,
          animationCurve:Curves.easeOut,
          backgroundColor: Bgcolor,
        ),
      ),
    );
  }
}
