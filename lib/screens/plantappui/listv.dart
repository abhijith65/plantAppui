import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview(),));
}
class Listview extends StatefulWidget{
  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {var tap=false;
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Today'),
          actions: [Icon(Icons.settings_outlined)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.builder(
                padding: EdgeInsets.only(top: 8),
                itemCount: 12,
                itemBuilder: (context,index)=>Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    leading: Icon(Icons.local_florist_rounded,size: 50,),
                    title: Text('Plant name'),
                    subtitle: Text('1${(index*4)%7}0 ml'),
                    hoverColor: Colors.white,
                    tileColor: index%2==0?Colors.black12:Colors.black38,
                    trailing: IconButton(
                      hoverColor: Colors.blueGrey,
                      highlightColor: Colors.black54,
                      onPressed: (){setState(() {
                        tap==false?tap=true:tap=false;
                      });},
                      icon: tap==false?Icon(Icons.water_drop_outlined):Icon(Icons.done)),
                  ),
                )),
          ),
        ],
      ),

    );
  }
}