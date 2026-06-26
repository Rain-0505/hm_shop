import 'package:flutter/material.dart';

class HmMorelist extends StatefulWidget {
  HmMorelist({Key? key}) : super(key: key);

  @override
  _HmMorelistState createState() => _HmMorelistState();
}

class _HmMorelistState extends State<HmMorelist> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,//2列
        mainAxisSpacing: 10,//主轴间距
        crossAxisSpacing: 10,//侧轴间距
        ),
      itemBuilder: (context, index) => 
      Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: 
      Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text('商品$index'),
      )));
  }
}