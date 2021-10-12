import 'package:flutter/material.dart';
import 'package:fluttertraining/screen/layout_and_widget/provider/components/count.dart';
import 'package:provider/provider.dart';

import '../../../../constanct.dart';
import 'counter.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>
    (builder:(context, value, child) =>
        Scaffold(
    appBar: AppBar(title: Text(kProvider),centerTitle: true,backgroundColor: kPrimaryColor,),
    body: 
     Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text('You have pushed the button this many times:'),
 
          Count(),
        ],
      ),
    ),
      
      floatingActionButton: FloatingActionButton(
      key: const Key('increment_floatingActionButton'),

      /// Calls `context.read` instead of `context.watch` so that it does not rebuild
      /// when [Counter] changes.
      onPressed: () => context.read<Counter>().increment(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
     )
    );
  }
}

