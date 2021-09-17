import 'package:flutter/material.dart';
import 'package:pref_demo/home_page.dart';
import 'package:pref_demo/log_in_page.dart';
import 'package:pref_demo/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogInPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SignUpPage.id: (context) => SignUpPage(),
        LogInPage.id: (context) => LogInPage(),
      },
    );
  }
}

