import 'package:flutter/material.dart';
import 'package:fluttertraining/constanct.dart';
import 'components/body.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({ Key? key }) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kCard),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body() ,
    );
  }
}