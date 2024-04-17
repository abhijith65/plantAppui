import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/tasks/atmcard.dart';
import 'package:flutterfeb/screens/login.dart';
import 'package:flutterfeb/screens/signup.dart';
import 'package:flutterfeb/screens/splashvea.dart';


void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashvea(),
    );
  }

}