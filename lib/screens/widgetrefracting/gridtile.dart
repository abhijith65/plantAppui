import 'package:flutter/material.dart';

class Gridtile extends StatelessWidget{
  final String? url;
  final String? head;
  final String? date;
  final String? name;

  Gridtile({ this.url, this.head, this.date, this.name});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(url!),
          Text('$head'),
          Text('$date'),
          Text('$name')
        ],
      ),
    );
  }

}