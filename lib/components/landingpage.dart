import 'package:flutter/material.dart';
import 'package:scholarr/main.dart';
import 'package:scholarr/theme/ChangeThemeButtonWidget.dart';
import 'package:provider/provider.dart';


import 'package:scholarr/theme/theme.dart';class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for system
    //final text = MediaQuery.of(context).platformBrightness == Brightness.dark
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ?"DarkTheme"
        :"LightTheme";
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title:  Text('Scholarr-MObile'),
          actions: [
            ChangeThemeButtonWidget(),
          ],
        ),
        body: Center(
          child: Text(
            'Hello $text',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
  }
}

