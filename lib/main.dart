import 'package:flutter/material.dart';
import 'package:fluttertraining/constanct.dart';
import 'package:fluttertraining/screen/layout_and_widget/animation/animation_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/appbarandtab/appbar_and_tab_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/buttonnavigationbar/button_navigation_bar_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/card/card_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/expanded/expanded_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/elevatedButton/elevatedButton_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/formandinput/form_and_input_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/futurebuilder/futurebuilder_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/gridview/gridview_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/intrinsic/intrinsic_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/jsonrestfulworkshop/json_restful_workshop_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/login/login_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/navigator/navigator_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/provider/provider_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/pulltorefresh/pull_to_refresh_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/qrcode/generate_qrcode_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/qrcode/scan_qrcode_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/scrollbarable/scrollbarable_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/silverappbar/silver_app_bar_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/sqlitedatabase/sqlite_database_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/streambuilder/streambuilder_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/tabbar/tabbar_screen.dart';
import 'package:fluttertraining/screen/layout_and_widget/youtubeplayer/youtube_player_screen.dart';
import 'package:fluttertraining/screen/life_cycle/life_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      // home: LoginScreen(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/navigator': (context) => const NavigatorScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/scrollbar': (context) => const ScrollbarableScreen(),
      },
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
  void initState() {
    super.initState();
    
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
        MenuFutureBuilder(),
        MenuAnimation(),
        MenuScrollbarable(),
        MenuAppbarAndTab(),
        MenuSilverAppbar(),
        MenuButtonNavigationBar(),
        MenuTabbar(),
        MenuNavigator(),
        MenuJsonRestfull(),
        MenuStreamBuilder(),
        MenuPullRefresh(),
        MenuYoutubePlayer(),
        MenuQrCode(),
        MenuGenQrCode(),
        MenuSqlite(),
        MenuProvider(),
        MenuLogout()
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


class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  String userName="";
  getUserInfo() async {
    var prefs = await SharedPreferences.getInstance();
    String? firstName= prefs.getString('firstName');
    String? token= prefs.getString('token');
    String? lastName= prefs.getString('lastName');
    print(firstName);
    print(lastName);
    print(token);
    setState(() {
      userName = firstName!;
    });
  }
  @override
  void initState() {
    
    super.initState();
    getUserInfo();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              ,SizedBox(
                height: size.height*0.02,
              )
            ,Text(userName)],
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
class MenuAnimation extends StatelessWidget {
  const MenuAnimation ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.animation,color: kPrimaryColor,),
        title: Text(kAnimation,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return AnimationScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuScrollbarable extends StatelessWidget {
  const MenuScrollbarable ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.fit_screen_outlined,color: kPrimaryColor,),
        title: Text(kScrolbarable,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return ScrollbarableScreen();}));
        },
        //trailing: Icon(Icons.more_vert),
        );
  }
}
 
class MenuAppbarAndTab extends StatelessWidget {
  const MenuAppbarAndTab ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.menu,color: kPrimaryColor,),
        title: Text(kAppbarAndTab,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return AppbarAndTabScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuButtonNavigationBar extends StatelessWidget {
  const MenuButtonNavigationBar ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.menu,color: kPrimaryColor,),
        title: Text(kButtonNavigationBar,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return ButtonNavigationBarScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuTabbar extends StatelessWidget {
  const MenuTabbar ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.tab,color: kPrimaryColor,),
        title: Text(kTabbar,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return TabbarScreeen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuSilverAppbar extends StatelessWidget {
  const MenuSilverAppbar ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.title_sharp,color: kPrimaryColor,),
        title: Text(kSilverAppBar,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context){return SilverAppbarScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}

class MenuNavigator extends StatelessWidget {
  const MenuNavigator ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.navigate_before,color: kPrimaryColor,),
        title: Text(kNavigator,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(
             settings: RouteSettings(name: "/navigator"),
             builder: (context){return NavigatorScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
// MenuJsonRestfull
class MenuJsonRestfull extends StatelessWidget {
  const MenuJsonRestfull ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.format_align_justify_outlined,color: kPrimaryColor,),
        title: Text(kJsonRestFulWorkshop,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(
             builder: (context){return JsonRestfullWorkShopScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuStreamBuilder extends StatelessWidget {
  const MenuStreamBuilder ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.stream,color: kPrimaryColor,),
        title: Text(kStreamBuilder,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(
             builder: (context){return StreamBuilderScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuPullRefresh extends StatelessWidget {
  const MenuPullRefresh ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.refresh,color: kPrimaryColor,),
        title: Text(kPullToRefresh,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
             Navigator.push(context,MaterialPageRoute(
             builder: (context){return PullToRefreshScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuLogout extends StatelessWidget {
  const MenuLogout ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.logout,color: kPrimaryColor,),
        title: Text(kLogout,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(
             
             builder: (context){return LoginScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuYoutubePlayer extends StatelessWidget {
  const MenuYoutubePlayer ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.youtube_searched_for,color: kPrimaryColor,),
        title: Text(kYoutubePlayer,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(
             
             builder: (context){return YoutubePlayerScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuQrCode extends StatelessWidget {
  const MenuQrCode ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.qr_code,color: kPrimaryColor,),
        title: Text(kScanQrcode,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
           Navigator.push(context,MaterialPageRoute(
             
             builder: (context){return ScanQrcodeScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
class MenuGenQrCode extends StatelessWidget {
  const MenuGenQrCode ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.qr_code,color: kPrimaryColor,),
        title: Text(kGenQrcode,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
             Navigator.push(context,MaterialPageRoute(
             builder: (context){return GenerateQrcodeScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}

class MenuSqlite extends StatelessWidget {
  const MenuSqlite ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.square_foot_outlined,color: kPrimaryColor,),
        title: Text(kSqliteDatabase,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
             Navigator.push(context,MaterialPageRoute(
             builder: (context){return SqliteDatabaseScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}
// MenuProvider

class MenuProvider extends StatelessWidget {
  const MenuProvider ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ListTile(
        leading: Icon(Icons.square_foot_outlined,color: kPrimaryColor,),
        title: Text(kProvider,style:TextStyle(fontSize: kPrimaryFontSize,wordSpacing: 1)),
        onTap: (){
             Navigator.push(context,MaterialPageRoute(
             builder: (context){return ProviderScreen();}));
        },
        // trailing: Icon(Icons.more_vert),
        );
  }
}

