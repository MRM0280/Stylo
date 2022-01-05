import 'package:flutter/material.dart';

class SafetyChecklist extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery. of(context). size. width;

    return Container(
      width: width,
      height: 75.0,
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[

          SizedBox(width: 10.0,),

          Image(image: AssetImage('assets/safety_checklist/safety_1.jpg')),

          SizedBox(width: 10.0,),

          Image(image: AssetImage('assets/safety_checklist/safety_2.jpg')),

          SizedBox(width: 10.0,),

          Image(image: AssetImage('assets/safety_checklist/safety_3.jpg')),

          SizedBox(width: 10.0,),

          Image(image: AssetImage('assets/safety_checklist/safety_4.jpg')),

          SizedBox(width: 10.0,),

          Image(image: AssetImage('assets/safety_checklist/safety_5.jpg')),

          SizedBox(width: 10.0,),

        ],
      ),
    );
  }
}