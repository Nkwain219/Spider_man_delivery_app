import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  bool _call = true;
  bool _voice =true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                child: Opacity(
                  opacity: 0.5,
                    child: Image(image: AssetImage('assets/profile.JPG'),fit: BoxFit.cover,height: screenHeight,))),
          ),
          Align(
            alignment: Alignment(0 , -0.6),
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/profile.JPG'),
            ),
          ),
          Align(
            alignment: Alignment(0 , -0.25),
              child: Text("Chucks",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
              fontSize: screenWidth * 0.06),)),
          Align(
            alignment: Alignment(0, -0.2),
              child: Text("1:30 mins",style: TextStyle(color: Colors.white,fontSize: screenWidth * 0.05),)),
          Align(
            alignment: Alignment(-0.5,0.7),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(onPressed: (){
                setState(() {
                  _call = !_call;
                });
              }, icon: _call? Icon(Icons.volume_up) : Icon(Icons.volume_off),color: Colors.white,),
            ),
          ),
          Align(
            alignment: Alignment(0,0.7),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(onPressed: (){
                setState(() {
                  _voice = !_voice;
                });
              }, icon: _voice? Icon(Icons.mic) : Icon(Icons.mic_off),color: Colors.white,),
            ),
          ),
          Align(
            alignment: Alignment(0.5,0.7),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:  Icon(Icons.phone_locked),color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
