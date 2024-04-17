import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
       child: Image(image: AssetImage("assets/icons/veawhite.png"),height: 10000,),
        //child: Image(image: NetworkImage("https://cdn4.iconfinder.com/data/icons/business-management-223/24/revenue_objective_profit_target_funds_fundrasingin_money-256.png"),
       // height: 10000,width: 30000,),
      ),
      
      /*
      body:  Center(
        child: Icon(Icons.mobile_screen_share,
        size: 90,
            color: Colors.black38,opticalSize: 12,),
      ),
       */
    );
  }
}
