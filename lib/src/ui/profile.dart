import 'package:flutter/material.dart';
import '../resources/background.dart';
import '../resources/app-palette.dart';
import '../resources/customcard.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    
    Size screenSize = MediaQuery.of(context).size;
    
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
              _buildDateCard('Enlistment Date', screenSize),
              _buildDateCard('ORD Date', screenSize),
              _buildBalanceCard('Leave Balance', screenSize),
              _buildBalanceCard('Off Balance', screenSize)
            ],
          )
        )
      ]),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildDateCard(String title, Size screenSize) {

    return CustomCard(
      screenSize: screenSize, 
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.body2
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: Divider(
                      color: Palette.lineColor,
                      height: 8,
                    )
                  ),
                ),
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Select Date",
                  style: Theme.of(context).textTheme.body2
                )
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget _buildBalanceCard(String title, Size screenSize) {
    return CustomCard(
      screenSize: screenSize,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.body2
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: Divider(
                      color: Palette.lineColor,
                      height: 8,
                    )
                  ),
                ),
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Set Balance",
                  style: Theme.of(context).textTheme.body2
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}