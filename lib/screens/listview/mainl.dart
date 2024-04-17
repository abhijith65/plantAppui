import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/listview/home.dart';
import 'package:flutterfeb/screens/listview/stackeg.dart';

void main(){
  runApp(Applist());
}
class Applist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Stackeg(),);
  }

}