import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/splashpage.dart';

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
      home: Splashpage(),
    );
  }

}