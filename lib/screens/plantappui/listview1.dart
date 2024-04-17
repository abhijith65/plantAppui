import 'package:flutter/material.dart';

class Listview1 extends StatefulWidget {
  const Listview1({super.key});

  @override
  State<Listview1> createState() => _Listview1State();
}

class _Listview1State extends State<Listview1> {
  @override
  Widget build(BuildContext context) {var tap=false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Water today',style: TextStyle(fontSize: 34),),
        actions: [Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.settings_outlined),
        )],
      ),
      body: ListView.separated(itemBuilder: (context,index)=>Padding(
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
      ),
          separatorBuilder:(context,index)=>
          (index%4==0 &&index!=0)?Text('   April ${index+13}',style: TextStyle(fontSize: 34),):SizedBox(),
          itemCount: 12),
    );
  }
}
