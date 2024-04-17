import 'package:flutter/material.dart';

class Settingspg extends StatelessWidget {
  const Settingspg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.white30,
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemBuilder:(context,index)=>ListTile(title: Text('.')),
          itemCount: 6,

      ),

    );
  }
}
