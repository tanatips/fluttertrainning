import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
     width: size.width ,
      // color: Colors.blue,
      child: Column(
        children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red
          ),
          
          onPressed: (){
          print(" Press ");
        }, child: Text("OK"))
      ],),
    );
  }
}