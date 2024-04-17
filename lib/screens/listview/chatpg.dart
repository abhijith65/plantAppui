import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/listview/callpage.dart';
import 'package:flutterfeb/screens/listview/home.dart';

class Chatpg extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      floatingActionButton: FloatingActionButton(

          backgroundColor: Colors.green,
          child: Icon(Icons.add_comment_rounded),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Callpg()));}),
      backgroundColor: Colors.black,

      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){},
            icon: Icon(Icons.photo_camera_outlined),color: Colors.white,),
          SizedBox(width: 6,),
          IconButton(onPressed: (){},
              icon: Icon(Icons.search),color: Colors.white),
          SizedBox(width: 6,),
          PopupMenuButton(itemBuilder: (context){return [PopupMenuItem(child: RichText(
              text : TextSpan(text: 'setting',)))];},
            shadowColor: Colors.white,
          )
        ],
        title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.white24,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
              7,
                  (index) => ListTile(
                    minVerticalPadding: 4,
                    title: Text('${Home.users[index]['name']}',style: TextStyle(color: Colors.white),),
                    leading: CircleAvatar(
                      backgroundColor: Colors.black54,
                      backgroundImage: AssetImage('${Home.users[index]['pic']}'),
                    ),
                    subtitle: Text('${Home.users[index]['phone']}',style: TextStyle(color: Colors.grey),),
                    trailing: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text('$index:0${index + 2}',style: TextStyle(color: Colors.white),),
                        SizedBox(height: 4,),
                        Home.users[index]['read'] == null
                            ? SizedBox(
                          height: 10,
                        )
                            : CircleAvatar(
                          backgroundColor: Colors.green,
                          minRadius: 6,
                          maxRadius: 10,
                          child: Text(
                            '${Home.users[index]['read']}',
                            style: TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
