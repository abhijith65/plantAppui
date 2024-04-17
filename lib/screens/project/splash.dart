import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/project/selection.dart';


class Splashpg extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 2),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Selectionpg()));});
    return Scaffold(
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