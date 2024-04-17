import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/project/editing.dart';
import 'package:flutterfeb/screens/project/settings.dart';

class Selectionpg extends StatelessWidget {
  const Selectionpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: Text('Storage',style: TextStyle(fontSize: 45),),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settingspg()));
              }, 
              icon: Icon(Icons.settings,size: 36,color: Colors.grey,))
          ],
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(14.0),
            child: ListTile(
              splashColor: Colors.black,focusColor: Colors.black,
              leading: Icon(Icons.folder,size: 80,),
              subtitle: Text('Folder ${index+1}',style: TextStyle(fontSize: 30,color: Colors.grey),),
              onTap: (){
                Navigator.push((context), MaterialPageRoute(builder: (context)=>Editingpg()));
              },
            ),
          ),
           itemCount: 6,
      ),
    );
  }
}
