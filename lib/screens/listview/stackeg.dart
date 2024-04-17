import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfeb/screens/listview/chatpg.dart';
import 'package:flutterfeb/screens/listview/listview2.dart';
import 'package:flutterfeb/screens/listview/listviewbuilder.dart';
import 'package:flutterfeb/screens/listview/listviewcustom.dart';

class Stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   //throw UnimplementedError();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
       // foregroundColor: Colors.white,
          backgroundColor: Colors.green,
         splashColor: Colors.black54,
         // elevation: 800,
          onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Chatpg()));}),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,width: 100,
                color: Colors.red,
              ),
              Positioned(
                left: 30,
                child: Container(
                  height: 100,width: 40,
                  color: Colors.purple,
                ),
              ), Container(
                height: 20,width: 10,
                color: Colors.greenAccent,
              ),

            ],
          ),
          MaterialButton(
            color: Colors.deepOrange,
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Listview2()));}),
          MaterialButton(
              color: Colors.deepOrangeAccent,
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewBuilder()));}),
          MaterialButton(
              color: Colors.orangeAccent,
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Listcustom()));}),


        ],
      ),
    );
  }

}