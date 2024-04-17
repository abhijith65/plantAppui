import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/splashvea.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Splashvea()));});
    return Scaffold(
      appBar: AppBar(),
        body: Container(
      decoration: const BoxDecoration(
        /*
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage("assets/images/redrock.jpg"))),

           */
        gradient: LinearGradient(
            colors: [Colors.black, Colors.red, Colors.black]),),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.slow_motion_video_rounded,
                  size: 80,
                ),
                Text(
                  'Utube',
                  style: TextStyle(
                      fontSize: 75,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                )
              ],
            ),
          ),


    ));
  }
}
