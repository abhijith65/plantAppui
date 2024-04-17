import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/listview/home.dart';

class Callpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          ),
          SizedBox(
            width: 6,
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
          SizedBox(
            width: 6,
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: RichText(
                        text: TextSpan(
                  text: 'setting',
                )))
              ];
            },
            shadowColor: Colors.white,
          )
        ],
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.white24,
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_call),
          backgroundColor: Colors.green,
          onPressed: () {}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            ListView(
              children: List.generate(7, (index) => ListTile(
                minVerticalPadding: 15,
                leading: CircleAvatar(backgroundImage: AssetImage('${Home.users[index]['pic']}'),),
               title: Text('${Home.users[index]['name']}',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.add_call,color: Colors.green,),
              )),
            ),

      ),
     
    );
  }
}
