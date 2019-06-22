import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          body1: TextStyle( color: Color(0xFFFFFFFF), fontWeight: FontWeight.w300 ),
          display1: TextStyle( color: Color(0xFFFFFFFF) ),
          title: TextStyle( fontWeight: FontWeight.w500 )
        ),
        backgroundColor: Color(0xFF3FB8FF),
      ),
      home: MyHomePage(title: 'Welcome to Flutter'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Color _bgColorStart = Color(0xFF3FB8FF); //Blue
  Color _bgColorEnd = Color(0xFF94D7FF); //Light-white blue
  
  int _counter = 0;
  String actionText = "Default";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
          decoration: BoxDecoration (
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.0, 1.0],
              colors: [
                _bgColorStart,
                _bgColorEnd
              ]
            )
          ),
        ),
        new Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Text("ORD Countdown"),
            centerTitle: true,
            actions: <Widget>[
              Container(
                padding: EdgeInsets.all( 3.5 ),
                width: 55,
                child: InkWell(
                  child: Icon(Icons.menu),
                  onTap: (){
                    _incrementCounter();
                  },
                  highlightColor: Color(0xFF5291C2),
                  splashColor: Color(0xFF94D7FF),
                  borderRadius: BorderRadius.all( Radius.circular(30) ),
                ),
              ),
              SizedBox( width: 20,)
            ],
            iconTheme: IconThemeData( size: 30, color: Color(0xFF002D79) ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          )
        ),
        Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
            ],
          )
        )
      ]),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}