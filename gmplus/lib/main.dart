import 'package:flutter/material.dart';
import 'package:gmplus/pages/home_page.dart';
import 'package:gmplus/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GM +',
      debugShowCheckedModeBanner: false,
      theme: GMplusTheme.theme,
      home: const HomePage(),
    );
  }
}

