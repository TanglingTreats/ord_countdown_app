import 'package:flutter/material.dart';
import '../resources/app-palette.dart';
import '../resources/background.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    
    
    return Scaffold(
      body: Stack (children: <Widget>[
        Container(
          //Background gradient for the app
          decoration: BoxDecoration (
            gradient: Background.gradient
          ),
        ),
        // Transparent appbar
        new Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Text("ORD Countdown"),
            centerTitle: true,
            actions: <Widget>[
              Container(
                padding: EdgeInsets.all( 5 ),
                width: 55,
                child: InkWell(
                  child: Icon(Icons.menu),
                  onTap: (){
                    Navigator.pushNamed(context, '/profile');
                  },
                  highlightColor: Color(0xFF5291C2),
                  splashColor: Color(0xFF94D7FF),
                  borderRadius: BorderRadius.all( Radius.circular(30) ),
                ),
              ),
              SizedBox( width: 20,)
            ],
            iconTheme: IconThemeData( size: 30, color: Palette.iconColor ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          )
        ),
        Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
                  'Homepage',
                  style: Theme.of(context).textTheme.display1,
                ),
            ],
          )
        )
      ]),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}