
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutterfeb/screens/plantappui/signuppg.dart';


import 'loginpg.dart';




class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1491147334573-44cbb4602074?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            fit: BoxFit.cover
        )),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('The best',style: TextStyle(fontSize: 70,color: Colors.white),)),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('app for',style: TextStyle(fontSize: 70,color: Colors.white))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('your plants',style: TextStyle(fontSize: 70,color: Colors.white))),
              SizedBox(height: 160,),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width*.9,
                child: Text('Login'),
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (contex)=>Login()));},
                color: Colors.green,),
              SizedBox(height: 20,),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width*.9,
                child: Text('SignUp'),
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (contex)=>Signup()));},
                color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }

}