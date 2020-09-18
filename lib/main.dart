import 'package:flutter/material.dart';
import 'package:listening_book/constants.dart';
import 'package:listening_book/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: mBackgroundColor,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: mBackgroundColor,
          elevation: 0,
        )
      ),
      home: HomeScreen(),
    );
  }
}