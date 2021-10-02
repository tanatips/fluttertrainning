import 'package:flutter/material.dart';
import '../../../constanct.dart';
import 'components/body.dart';

class ElevatedButtonScreen extends StatefulWidget {
  const ElevatedButtonScreen({ Key? key }) : super(key: key);

  @override
  _ElevatedButtonScreenState createState() => _ElevatedButtonScreenState();
}

class _ElevatedButtonScreenState extends State<ElevatedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kElevatedButton),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}