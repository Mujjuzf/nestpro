import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:nestpro/OtpScreen/otpscreen.dart';
import 'package:nestpro/cd.dart' as cd;

import '../Colors.dart';


class Loginscreena extends StatefulWidget {
  const Loginscreena({Key? key}) : super(key: key);

  @override
  _LoginscreenaState createState() => _LoginscreenaState();
}

class _LoginscreenaState extends State<Loginscreena> {
  String titel ="Country code";


  @override
  Widget build(BuildContext context,) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Bgcolo,
        body: SingleChildScrollView(
          child: Padding(
            padding:   EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login or sing up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
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
                                      width: Get.width* 0.3,
                            child:  cd.InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: SelectorConfig(
                                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: TextStyle(color: Colors.black),

                              formatInput: false,
                              keyboardType:
                              TextInputType.numberWithOptions(signed: true, decimal: true),
                              inputBorder: OutlineInputBorder(),
                              onSaved: (PhoneNumber number) {
                                print('On Saved: $number');
                              },
                            ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     formKey.currentState.validate();
                              //   },
                              //   child: Text('Validate'),
                              // ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     getPhoneNumber('+15417543010');
                              //   },
                              //   child: Text('Update'),
                              // ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     formKey.currentState.save();
                              //   },
                              //   child: Text('Save'),
                              // ),,



                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.white),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),

                              child: Padding(
                                padding:   EdgeInsets.symmetric(vertical: 14.0,horizontal: 8),
                                child: TextField(
                                  decoration:   InputDecoration.collapsed(
                                    hintText: 'Enter phone number',
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: Get.width,

                        child: Card(
                          color: Colors.transparent,

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                primary: Colors.pinkAccent,

                                padding: EdgeInsets.all(6),
                                elevation: 15,
                                  shape:   RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.red)
                                  )
                              ),
                              onPressed: () {

                                Get.to(OtpScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'COUNT ME IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                InkWell(
                  onTap: (){
                    Get.bottomSheet(
                      Scaffold(
                        backgroundColor: Colors.transparent,
                        appBar: AppBar(
                          backgroundColor: Colors.transparent,
                          automaticallyImplyLeading: false,
                           centerTitle: true,title: InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: CircleAvatar(radius: 10,backgroundColor: Colors.white,
                            child: Icon(Icons.close_sharp,size: 15,color: Bgcolor,),)),
                        ),
                        body: Container(
                          color:Bgcolor,
                          child:  SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding:   EdgeInsets.all(30.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        "PRIVACY POLICY",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 10),

                                      Text(
                                        "Last update 20.05.2022",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 10),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "and respecting your privacy.Nest  collect,user and keeps information in complance"
                                            "with the general Data protaction regulation[Regulation EU]2016/679) "
                                            "(GDPR),the privacy and Elecrtronic communicaetion (EC Directive)Regulation 2003,the uk Data"
                                            "Protectiom Act 20188 andall relevant regulations.For the purpose of GDPR,the data controller is Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Nest pro Inc.(Next)is committied to protacring"
                                            "Protectiom Act 20188 Nest.",
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),                    ),

                    );
                  },
                  child: Text(
                    "By continuing  you agree to our \nterms of use & privacy policy.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
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
      ),
    );
  }


}
