import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(my());
}
class my extends  StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home: Atm(),);
  }
}
class Atm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Center(
        child: Container(

          height: 200,
          width: 380,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/ssmokebg.jpg'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('world',style: TextStyle(fontSize: 30,color: Colors.white),),
                    SizedBox(width: 250,),
                    Icon(Icons.wifi,color: Colors.white,) ,
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.credit_card,size: 50,color: Colors.white,),
                        Text('5422 7531 1133',style: TextStyle(color: Colors.white),),
                        Text('valid upto',style: TextStyle(fontSize:7,color: Colors.white ),),
                        Text('02/30',style: TextStyle(fontSize: 13,color: Colors.white),),
                        Text('M A ARSHATH',style: TextStyle(fontSize: 13,color: Colors.white),)
                      ],
                    ),
                    SizedBox(width: 200,),
                    Column(
                      children: [
                        Text('debit',style: TextStyle(color: Colors.white),),
                        SizedBox(height: 10,),
                        Stack(children: [
                          Container(
                            height: 45,
                            width: 65,
                          ),
                          Icon(Icons.circle,color: Colors.yellow,size: 45,),
                          Positioned(
                            left: 20,
                              child: Icon(Icons.circle,color: Colors.red,size: 45,))

                        ],),
                        Text('MasrterCard',style: TextStyle(fontSize: 11,color: Colors.white),)
                      ],
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

}