import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/gridview/eg.dart';
import 'package:flutterfeb/screens/listview/home.dart';
import 'package:flutterfeb/screens/listview/listview2.dart';
import 'package:flutterfeb/screens/listview/listviewbuilder.dart';
import 'package:flutterfeb/screens/listview/stackeg.dart';
void main(){
  runApp(MaterialApp(home: Bottomnav(),));
}
class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int index=0;
  var screen=[
    Stackeg(),
    Listview2(),
    Home(),
    ListviewBuilder()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.purple,
        mouseCursor: MouseCursor.uncontrolled,
        type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (tapindex){
          setState(() {
            index = tapindex;
          });
          },
          items: const [
        BottomNavigationBarItem(icon: Text('k'),
            label:'oh'),
            BottomNavigationBarItem(icon: Icon(Icons.key),label:'o'),
            BottomNavigationBarItem(icon: Icon(Icons.offline_bolt),label:'olh'),
            BottomNavigationBarItem(icon: Icon(Icons.electric_bolt),label:'ohk'),

      ]),
    );
  }
}
