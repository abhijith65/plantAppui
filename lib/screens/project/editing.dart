import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/project/selection.dart';

class Editingpg extends StatelessWidget {
  const Editingpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            tileColor: Colors.white30,
            leading:IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Selectionpg()));
                },
                icon: Icon(Icons.backspace_rounded,size: 30,color: Colors.grey,)) ,
            trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Selectionpg()));
                },
                icon: Icon(Icons.done_outline,size: 30,color: Colors.grey,)),
          ),
          Icon(
            Icons.play_circle,
            color: Colors.grey,
            size: 120,
          ),
          Container(
            height: 60,
            color: Colors.white30,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: Wrap(
                  spacing: 70,
                  children: [
                    Icon(
                      Icons.content_cut_rounded,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(
                      Icons.add_circle_outline_sharp,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(
                      Icons.pie_chart_rounded,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
