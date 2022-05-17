import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../Colors.dart';


class Loginscreenb extends StatefulWidget {
  const Loginscreenb({Key? key}) : super(key: key);

  @override
  _LoginscreenbState createState() => _LoginscreenbState();
}

class _LoginscreenbState extends State<Loginscreenb> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Bgcolo,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("asset/5.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Real world cripto invesrment\n"
                    "experience with zero risk ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 160.0, top: 40),
                child: Text(
                  "Login or sing up",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    width: 90,



                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    width: 200,
                    child: Center(
                      child: TextField(
                        decoration: new InputDecoration.collapsed(
                            hintText: '9167171717'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 340,
                height: 40,
                margin: const EdgeInsets.all(25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,

                    padding: EdgeInsets.all(6),
                  ),
                  onPressed: () {},
                  child: Text(
                    'COUNTINUE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
              Text(
                "By continuing  you agree to our \nterms of use & privacy policy.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ), Divider(
                height: 10,
                thickness: 1,
                endIndent: 100,
                indent: 100,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
