
import 'package:flutter/material.dart';
import 'package:fooddevelivery_user_codecanyon/HomePage2.dart';
import 'package:fooddevelivery_user_codecanyon/Network/foodListNetwork.dart';
class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("Click"),
        onPressed: (){

          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
        },
      ),
    );
  }
}
