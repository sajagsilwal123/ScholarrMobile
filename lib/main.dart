import 'package:flutter/material.dart';
import 'package:scholarrfrontend/theme/theme.dart';
import 'components/signup.dart';
import 'components/body.dart';
import 'components/login.dart';
import 'components/landingpage.dart';

void main(){
  runApp(
    MyApp(),
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
    home: LandingPage(),
  );
}


// void main()=> runApp(MaterialApp(
//   debugShowCheckedModeBanner: false,
//   title: 'Scholarr Mobile App',
//   themeMode: ThemeMode.system,
//   theme: MyThemes.lightTheme,
//   darkTheme: MyThemes.darkTheme,
//   // theme: ThemeData(
//   //   colorScheme: ColorScheme.fromSwatch(
//   //     primarySwatch: Colors.red,
//   //   ).copyWith(
//   //     secondary: Colors.green,
//   //   ),
//   //   textTheme:
//   //   const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
//   // ),
//   home:LandingPage()
//   // home: Signup(),
// ));
