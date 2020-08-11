import 'package:flutter/material.dart';
class TitleText1 extends StatelessWidget {
  final String txt;
  TitleText1({this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(txt,style: TextStyle(fontSize: 14),),
    );
  }
}

class TitleText2 extends StatelessWidget {
  final String txt;
  TitleText2({this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(txt,style: TextStyle(fontSize: 12,color: Color(0xff00B970)),),
    );
  }
}

class alertText1 extends StatelessWidget {
  final String txt;
  alertText1({this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(txt,style: TextStyle(fontSize: 12,color: Color(0xff8b0000)),),
    );
  }
}

