import 'package:flutter/material.dart';
import 'components/signup.dart';
import 'components/body.dart';
import 'components/login.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Scholarr Mobile App',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
    ).copyWith(
      secondary: Colors.green,
    ),
    textTheme:
    const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
  ),
  home: Signup(),
));

//THEMEDATAWIDGET