import 'package:flutter/material.dart';
import 'package:scholarr/main.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ?"DarkTheme"
        :"LightTheme";
    return
      Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.orange,
        //   // title: Text('Scholarr Mobile'),
        //   // actions: [
        //   //   ChangeThemeButtonWidget(),
        //   // ],
        // ),
        body: Container(
          child: Center(
            child: Text(
              'Hello $text',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ) ,
        ),
      );
  }
}
