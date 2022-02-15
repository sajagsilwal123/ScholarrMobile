import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            child: Text("HELLO"),
            color: Colors.blue ,
          )
        ],
      ),
    );
  }
}
