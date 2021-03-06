import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scholarr/theme/theme.dart';
import 'components/signup.dart';
import 'components/body.dart';
import 'components/login.dart';
import 'components/landingpage.dart';
import 'theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:scholarr/planner/tplanner.dart';

void main(){
  runApp(
     MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        title: 'Scholarr Mobile App',
        themeMode: themeProvider.themeMode,
        theme: MyThemes.darkTheme,
        darkTheme: MyThemes.darkTheme,
        home: TPlanner(),
      );
    },
  );
}
