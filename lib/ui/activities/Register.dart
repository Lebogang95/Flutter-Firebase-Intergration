import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_intergration/ui/activities/Login.dart';
import 'package:flutter_firebase_intergration/ui/custom_widgets/app_text.dart';
import 'package:flutter_firebase_intergration/utils/gradient_backdrop_1.dart';

class RegisterPage extends StatefulWidget {

  RegisterPage({Key key}) : super(key:key);

  @override
  _RegisterPageState createState() => new _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {

  static final formKey = new GlobalKey<FormState>();

  final nameText = TextEditingController();
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
        label: 'Register', size: 30.0
    );

    final heading_2 = AppText(
        label: '', size: 16.0
    );

    final nameInput = Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextFormField(
        key: new Key('name'),
        controller: nameText,
        style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white),
        autofocus: false,
        decoration: InputDecoration(
            hintText: 'Name',
            hintStyle: TextStyle(color: Colors.white, fontFamily: 'DroidSansChinese'),
            contentPadding: EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            icon: Icon(Icons.assignment_ind, color:Colors.white,)
        ),
        validator: (val) => val.isEmpty ? 'Name can\'t be empty.' : null,
      ),
    );

    final emailInput = Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextFormField(
        key: new Key('email'),
        controller: emailText,
        keyboardType: TextInputType.emailAddress,
        style: new TextStyle(fontFamily: 'DroidSansChinese', color: Colors.white),
        autofocus: false,
        decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.white, fontFamily: 'DroidSansChinese'),
            contentPadding: EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            icon: Icon(Icons.email, color:Colors.white,)
        ),
        validator: (val) => val.isEmpty ? 'Email can\'t be empty.' : null,
      ),
    );

    final passwordInput = Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextFormField(
        key: new Key('password'),
        controller: passwordText,
        autofocus: false,
        obscureText: true,
        style: new TextStyle(fontFamily: 'DroidSansChinese', color:Colors.white),
        decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white, fontFamily: 'DroidSansChinese'),
            contentPadding: EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.white),
            ),
            icon: Icon(Icons.vpn_key, color: Colors.white,)
        ),
        validator: (val) => val.isEmpty ? 'Password can\'t be empty.' : null,
      ),
    );

    final registerButton = Padding(
        padding: EdgeInsets.only(left: 64.0, right: 64.0),
        child: SizedBox(
          width: double.infinity,
          child:  RaisedButton(
              padding: EdgeInsets.all(16.0),
              textColor: Colors.white,
              color: const Color(0xff26ccff),
              child: Text("Register",
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

    final loginButton = FlatButton(
      child: AppText(
          label: 'Login Instead', size: 16.0
      ),
      onPressed: (){

        Navigator.push(
          context,
          PageRouteBuilder(pageBuilder: (context, animation1, animation2) {
            return LoginPage();
          },

          transitionsBuilder: (context, animation1, animation2, child) {
            return FadeTransition(
              opacity: animation1,
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 500),
        ),
        );
      },
    );

    return Scaffold(

      body: new Stack(
        children: <Widget>[

          GradientBackdrop_1(hexColor_1: Colors.black12, hexColor_2: Colors.black87, imagePath: 'images/backdrop_green.jpg',),
          
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
                        nameInput,
                        SizedBox(height: 24.0),
                        emailInput,
                        SizedBox(height: 24.0),
                        passwordInput,
                        SizedBox(height: 38.0),
                        registerButton,
                        SizedBox(height: 100.0),
                        loginButton,
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