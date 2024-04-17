
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Homemusi(),
    darkTheme: ThemeData.dark(),
  ));
}
class Homemusi extends StatefulWidget {
  const Homemusi({super.key});

  @override
  State<Homemusi> createState() => _HomemusiState();
}

class _HomemusiState extends State<Homemusi> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
