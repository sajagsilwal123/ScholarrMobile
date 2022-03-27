import 'package:flutter/material.dart';
import 'package:scholarrfrontend/components/login.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var test = MediaQuery.of(context).platformBrightness == Brightness.dark
    ? 'DarkTheme'
    : 'LightTheme';
    Size size = MediaQuery.of(context).size;
    print('THE HEIGHT OF THE SCREEN IS : ${size.height}');
    print(test);
    return Scaffold(
      body:Container(
        child: Text('Hello $test',
        style: TextStyle(
          fontSize: 40,
          color: Colors.orange,
        ),),
      ),
    );
  }
}
