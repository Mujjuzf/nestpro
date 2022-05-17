import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nestpro/Maindashboard/maindashboard.dart';
import 'package:nestpro/SignupScreen/signupscreen.dart';

import '../Colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  get last => false;

  get first => null;

  @override
  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Bgcolor,
        appBar: AppBar(
          backgroundColor: Bgcolor,
          automaticallyImplyLeading: false,
          title: Row(
mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                  child: Image(
                    image: AssetImage("asset/backbutton.png"),
                  )),
              SizedBox(
                width: 1,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 150),
                child: Text(
                  "We have sent a varification code",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "91+917717171",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildOtpfield(context,0),
                    SizedBox(
                      width: 20,
                    ),
                    buildOtpfield(context,1),
                    SizedBox(
                      width: 20,
                    ),
                    buildOtpfield(context,2),
                    SizedBox(
                      width: 20,
                    ),
                    buildOtpfield(context,3),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Text(
                    "0.34",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    "Didn't recive the code? Resend now",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildOtpfield(BuildContext context,index) {
    return Container(

                  width: 50,
                  child: TextFormField(
                    autofocus: true,
                    onChanged: (value) {
                      if (value.length == 1 && index != 3) {
                        FocusScope.of(context).nextFocus();
                      }
                      print(value.isEmpty);
                      print(index);
                      if (value.isEmpty && index != 0) {
                        FocusScope.of(context).previousFocus();
                      }
                      if(index == 3 && value.length == 1){
                        Get.to(Signup());
                      }
                    },
                    showCursor: false,
                    readOnly: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4),
                      fillColor: Colors.white,
                      filled: true,
                      counter: Offstage(),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 2, color: Colors.black12),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                );
  }
}
