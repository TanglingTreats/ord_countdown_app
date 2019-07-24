/*
Created: 24-07-19
Edited: 24-07-19
*/
import 'package:flutter/material.dart';
import '../resources/app-palette.dart';


//This class creates a background widget for displaying information
class CustomCard extends StatelessWidget{
  CustomCard({@required this.screenSize, @required this.child, 
            this.marginTop = 15, this.marginBottom = 15, this.widthDivider = 1.25, this.heightDivider = 8});

  final double widthDivider;
  final double heightDivider;

  final double marginTop;
  final double marginBottom;

  final Size screenSize;

  final Widget child;
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop, bottom: marginBottom),
      width: screenSize.width / widthDivider,
      height: screenSize.height / heightDivider,
      decoration: BoxDecoration(
        color: Palette.widgetBg,
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: child,
    );
  }
}