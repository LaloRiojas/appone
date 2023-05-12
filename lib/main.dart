import 'package:flutter/material.dart';
import 'pages/loginscreen.dart';
import 'constants.dart';
import 'tools/colormanager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: getMaterialColor(Primarycolor),
              accentColor: getMaterialColor(secondarycolor),
              backgroundColor: getMaterialColor(bgc)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Primarycolor,
                  foregroundColor: Colors.black))),
      home: loginpage(),
    );
  }
}
