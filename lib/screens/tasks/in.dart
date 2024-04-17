import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      home: Splash(),
    );
  }
}
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
            child: Image(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM_OF6fTviYiqEKpVpI52ODWNfPwLD3li8-fOzXvyIwQ&s" ),height: 200,
            )));
  }
}