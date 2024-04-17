import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/listview/callpage.dart';

class Home extends StatelessWidget {
 static var users = [
    {
      'name': 'ebin',
      'phone': 'hi',
      'pic': "assets/icons/but.png",
      'read': '2'
    },
    {
      'name': 'sanin',
      'phone': 'call back',
      'pic': "assets/icons/enter.png",
      'read': '12'
    },
    {
      'name': 'ebony',
      'phone': 'ok,bye',
      'pic': "assets/images/bgimage.jpg",
      'read': '7'
    },
    {
      'name': 'amal',
      'phone': 'did you check th....',
      'pic': "assets/images/redrock.jpg",
      'read': null
    },
    {
      'name': 'mani',
      'phone': 'thats',
      'pic': "assets/icons/profile.png",
      'read': '2'
    },
    {
      'name': 'ram',
      'phone': 'lol',
      'pic': "assets/icons/person2.jpg",
      'read': '4'
    },
    {
      'name': 'febi',
      'phone': '.',
      'pic': "assets/icons/person1.png",
      'read': null
    },
  ];

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
      /*
        body: ListView(
          children: [
            Text('text 1',style: TextStyle(fontSize: 70),),
            Text('text 2',style: TextStyle(fontSize: 70),),
            Text('text 3',style: TextStyle(fontSize: 70),),
            Text('text 4',style: TextStyle(fontSize: 70),),
            Text('text 5',style: TextStyle(fontSize: 70),),
            Text('text 6',style: TextStyle(fontSize: 70),),
            Text('text 7',style: TextStyle(fontSize: 70),),
            Text('text 8',style: TextStyle(fontSize: 70),),
            Text('text 9',style: TextStyle(fontSize: 70),),
            Text('text 10',style: TextStyle(fontSize: 70),),
            Text('text 11',style: TextStyle(fontSize: 70),),
            Text('text 12',style: TextStyle(fontSize: 70),),

             */

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
        padding: const EdgeInsets.all(6.0),
        child: ListView(
          children: List.generate(
              7,
              (index) => Card(
                    color: Colors.black,
                    child: ListTile(
                      title: Text('${users[index]['name']}',style: TextStyle(color: Colors.white),),
                      leading: CircleAvatar(
                        backgroundColor: Colors.black54,
                        backgroundImage: AssetImage('${users[index]['pic']}'),
                      ),
                      subtitle: Text('${users[index]['phone']}',style: TextStyle(color: Colors.grey),),
                      trailing: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text('$index:0${index + 2}',style: TextStyle(color: Colors.white),),
                          SizedBox(height: 4,),
                          users[index]['read'] == null
                              ? SizedBox(
                                  height: 10,
                                )
                              : CircleAvatar(
                            backgroundColor: Colors.green,
                                  minRadius: 6,
                                  maxRadius: 10,
                                  child: Text(
                                    '${users[index]['read']}',
                                    style: TextStyle(fontSize: 10,color: Colors.black),
                                  ),
                                ),

                          /*
                          Icon(
                            Icons.call_missed_outgoing_rounded,
                            size: 20,
                          ),

                           */

                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
