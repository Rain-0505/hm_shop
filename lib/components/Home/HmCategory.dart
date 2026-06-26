import 'package:flutter/material.dart';

class HmCategory extends StatefulWidget {
  HmCategory({Key? key}) : super(key: key);

  @override
  _HmCategoryState createState() => _HmCategoryState();
}

class _HmCategoryState extends State<HmCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 120,
       margin: EdgeInsets.only(bottom: 10),
       child: ListView.builder(//按需渲染
         scrollDirection: Axis.horizontal,
         itemCount: 10,
         itemBuilder: (context, index) {
           return Container(
            alignment: Alignment.center,
            width: 80,
            height: 100, 
            color: Colors.blue,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text('分类$index',style: TextStyle(fontSize: 16,color: Colors.white),),
           );
         },
       ),
    );
  }
}