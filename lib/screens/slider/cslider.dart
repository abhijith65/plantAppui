import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Cslider(),));
}
class Cslider extends StatelessWidget {
  const Cslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: slider()
    );
  }
}

CarouselSlider slider(){
  return  CarouselSlider(items: [
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/redrock.jpg'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/ssmokebg.jpg'))),
    ),
    Container(height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splashbg.jpg'))),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/blackbg.jpg'))),
    ),
  ],
    options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.6,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.bounceIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,

      scrollDirection: Axis.horizontal,
    ) ,
  );
}