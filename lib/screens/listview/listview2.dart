import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/listview/about.dart';
import 'package:flutterfeb/screens/listview/setting.dart';

class Listview2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('view3'),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return [PopupMenuItem(child: RichText( text : TextSpan(text: 'setting',
                recognizer: TapGestureRecognizer()..onTap=(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Settings()));
            })
            ))];
               /* ,
          children:[  TextSpan(text: 'setting',
                recognizer: TapGestureRecognizer()..onTap=(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Settings()));
                },
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white12))]
            )),];


                */

             /*
              PopupMenuItem(child: TextSpan(text: 'about',
                  recognizer: TapGestureRecognizer()..onTap=(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> About()));
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white12)))

              */

          })
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return Container(

              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius:BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(70))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(backgroundImage: AssetImage('assets/images/ssmokebg.jpg'),
                    child: Icon(Icons.emoji_food_beverage_outlined,size: 60,color: Colors.black54,) ,
                    minRadius:70 ,),
                  Text('item'),
                  Icon(Icons.add_shopping_cart)
                ],
              ),
            );
          },
          separatorBuilder: (context,index){
            if(index%3==0){
            return Divider();}
            else{return Container();}
            },
          itemCount: 10),
    );
  }

}