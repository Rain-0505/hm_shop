import 'package:flutter/material.dart';

class HmSuggestion extends StatefulWidget {
  HmSuggestion({Key? key}) : super(key: key);

  @override
  _HmSuggestionState createState() => _HmSuggestionState();
}

class _HmSuggestionState extends State<HmSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
    child: Container(height: 200,
      alignment: Alignment.center,
      color: Colors.blue,
      margin: EdgeInsets.only(bottom: 10),
      child: Text('推荐'),     
    ));
  }
}