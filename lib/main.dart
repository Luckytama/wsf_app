import 'package:flutter/material.dart';
import 'package:wsf_app/news_page/news_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WSF Application',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new NewsPage(),
    );
  }
}
