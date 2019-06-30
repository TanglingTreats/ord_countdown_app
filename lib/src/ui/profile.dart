import 'package:flutter/material.dart';
import '../resources/background.dart';
import '../resources/app-palette.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
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
            leading: Container(
                padding: EdgeInsets.all( 5 ),
                width: 55,
                child: InkWell(
                  child: Icon(Icons.arrow_back),
                  onTap: (){
                    Navigator.pop(context);
                  },
                  highlightColor: Color(0xFF5291C2),
                  splashColor: Color(0xFF94D7FF),
                  borderRadius: BorderRadius.all( Radius.circular(30) ),
                ),
              ),
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
                  'This is a profile',
                  style: Theme.of(context).textTheme.display1,
                ),
            ],
          )
        )
      ]),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}