import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        child: Column(children: [
          Text("count:"),
          Text(this._counter.toString()),
        ],)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           
            setState(() {
                _counter=_counter+1;
                print(_counter);
            });
           
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), //
    );
  }
}