import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_intergration/ui/activities/Register.dart';
import 'package:flutter_firebase_intergration/ui/custom_widgets/app_text.dart';
import 'package:flutter_firebase_intergration/utils/gradient_backdrop_1.dart';

class VerificationPage extends StatefulWidget {

  VerificationPage({Key key}) : super(key:key);

  @override
  _VerificationPageState createState() => new _VerificationPageState();

}

class _VerificationPageState extends State<VerificationPage> {

  static final formKey = new GlobalKey<FormState>();

  final emailText = TextEditingController();
  final passwordText = TextEditingController();


  @override
  Widget build(BuildContext context) {

    final logo = Container(
        width: 130.0,
        height: 130.0,
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('images/logo.png'),
            )
        )
    );

    final heading_1 = AppText(
        label: 'Verification', size: 30.0
    );

    final heading_2 = AppText(
        label: 'To Continue Using This App Please Verify Your Email', size: 16.0
    );

    final resendEmailButton = Padding(
        padding: EdgeInsets.only(left: 64.0, right: 64.0),
        child: SizedBox(
          width: double.infinity,
          child:  RaisedButton(
              padding: EdgeInsets.all(16.0),
              textColor: Colors.white,
              color: const Color(0xff26ccff),
              child: Text("Resend Email",
                textAlign: TextAlign.center,
                style: new TextStyle(fontFamily: 'DroidSansChinese', color:  Colors.white, fontSize: 16),
              ),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)
              )
          ),
        )
    );

    final loginButton = Padding(
        padding: EdgeInsets.only(left: 64.0, right: 64.0),
        child: SizedBox(
          width: double.infinity,
          child:  RaisedButton(
              padding: EdgeInsets.all(16.0),
              textColor: Colors.white,
              color: const Color(0xff26ccff),
              child: Text("Continue",
                textAlign: TextAlign.center,
                style: new TextStyle(fontFamily: 'DroidSansChinese', color:  Colors.white, fontSize: 16),
              ),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)
              )
          ),
        )
    );

    final logoutButton = Padding(
        padding: EdgeInsets.only(left: 64.0, right: 64.0),
        child: SizedBox(
          width: double.infinity,
          child:  RaisedButton(
              padding: EdgeInsets.all(16.0),
              textColor: Colors.white,
              color: const Color(0xff26ccff),
              child: Text("Logout of this email",
                textAlign: TextAlign.center,
                style: new TextStyle(fontFamily: 'DroidSansChinese', color:  Colors.white, fontSize: 16),
              ),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)
              )
          ),
        )
    );

    return Scaffold(

      body: new Stack(
        children: <Widget>[


          GradientBackdrop_1(hexColor_1: Colors.black12, hexColor_2: Colors.black87, imagePath: 'images/backdrop_blue.jpg',),


          new Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      children: <Widget>[
                        logo,
                        SizedBox(height: 8.0),
                        heading_1,
                        SizedBox(height: 16.0),
                        heading_2,
                        SizedBox(height: 64.0),
                        resendEmailButton,
                        SizedBox(height: 8.0),
                        loginButton,
                        SizedBox(height: 8.0),
                        logoutButton
                      ],
                    ),
                  )

                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}