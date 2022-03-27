import 'package:flutter/material.dart';
import 'package:scholarr/theme/theme.dart';
import 'components/signup.dart';
import 'components/body.dart';
import 'components/login.dart';
import 'components/landingpage.dart';

void main(){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Scholarr Mobile App',
    themeMode: ThemeMode.system,
    theme: MyThemes.lightTheme,
    darkTheme: MyThemes.darkTheme,
    home: const LandingPage(),
  );
}
