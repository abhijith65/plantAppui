import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/project/splash.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashpg(),
    );
  }

}