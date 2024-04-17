import 'dart:async';
import 'package:flutterfeb/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/signup.dart';

class Splashvea extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //throw UnimplementedError();
    Timer(Duration(seconds: 2),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signupm()));});
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.grey,),
        backgroundColor: Colors.black,
        body:
            Center(
              child:
              Image(

                image: AssetImage("assets/icons/veablack.png"), height: 10000,)
            ),


        );
  }
}