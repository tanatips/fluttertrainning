import 'package:flutter/material.dart';
import 'package:fluttertraining/constanct.dart';
import 'package:fluttertraining/screen/layout_and_widget/card/card_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/expanded/expanded_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/elevatedButton/elevatedButton_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/formandinput/form_and_input_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/futurebuilder/futurebuilder_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/gridview/gridview_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/intrinsic/intrinsic_screen.dart';
import 'package:fluttertraining/screen/life_cycle/life_screen.dart';

import 'screen/layout_and_widget/flex/flex_screen.dart';
import 'screen/layout_and_widget/stack/stack_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String profilePic = "assets/images/man.png";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: kPrimaryColor,
      ),
      drawer: Drawer(child: ListView(
        children: [
        ProfilePicture(),
        MenuFlexScreen(),
        MenuStackScreen(),
        MenuExpandedScreen(),
        MenuLifeCycle(),
        MenuCardScreen(),
        MenuElevatedButton(),
        MenuGridView(),
        MenuIntrinsic(),
        MenuFormInput(),
        MenuFutureBuilder()
        ],
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            SpaceHeight(size: size),
            Text(
              'You have pushed the button this many times:',
            ),
            SpaceHeight(size: size),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MenuLifeCycle extends StatelessWidget {
  const MenuLifeCycle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.circle_rounded ,color: kPrimaryColor,),
      title: Text(kLifeCycle,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){return LifeScreen();}));
      },
      //trailing: Icon(Icons.more_vert),
      );
  }
}

class MenuExpandedScreen extends StatelessWidget {
  const MenuExpandedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Icon(Icons.expand_outlined ,color: kPrimaryColor,),
    title: Text(kExpanded,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
    onTap: (){
       Navigator.push(context,MaterialPageRoute(builder: (context){return ExpandedScreen();}));
    },
    //trailing: Icon(Icons.more_vert),
    );
  }
}

class SpaceHeight extends StatelessWidget {
  const SpaceHeight({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height*0.02
    );
  }
}


class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: DrawerHeader(
        child: Align(alignment: Alignment.center,
        child: Column(children: [
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.white,
                   
                    child: CircleAvatar(radius: 45,
                    backgroundColor: kSecondColor,
                    backgroundImage: AssetImage("assets/images/man.png"),
                    ),
                    // backgroundColor: kPrimaryLightColor,
              )
            ],
          )
        ,)
      ,),
    );
  }
}

class MenuStackScreen extends StatelessWidget {
  const MenuStackScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.stacked_bar_chart,color: kPrimaryColor,),
        title: Text(kStack,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return StackScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}

class MenuFlexScreen extends StatelessWidget {
  const MenuFlexScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.flare ,color: kPrimaryColor,),
        title: Text(kFlex,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return FlexScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}

class MenuCardScreen extends StatelessWidget {
  const MenuCardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.card_giftcard,color: kPrimaryColor,),
        title: Text(kCard,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return CardScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}


class MenuElevatedButton extends StatelessWidget {
  const MenuElevatedButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.smart_button,color: kPrimaryColor,),
        title: Text(kElevatedButton,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return ElevatedButtonScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}
// MenuGridView
class MenuGridView extends StatelessWidget {
  const MenuGridView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.grid_3x3,color: kPrimaryColor,),
        title: Text(kGridView,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return GridViewScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}

class MenuIntrinsic extends StatelessWidget {
  const MenuIntrinsic({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.rounded_corner,color: kPrimaryColor,),
        title: Text(kIntrinsic,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return IntrinsicScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}
// MenuFormInput
class MenuFormInput extends StatelessWidget {
  const MenuFormInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.input,color: kPrimaryColor,),
        title: Text(kFormAndInput,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return FormAndInputScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuFutureBuilder extends StatelessWidget {
  const MenuFutureBuilder ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.build,color: kPrimaryColor,),
        title: Text(kFutureBuilder,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return FutureBuilderScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}
