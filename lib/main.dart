import 'package:flutter/material.dart';
import 'package:tugas_mobile/detail_page.dart';
import 'package:tugas_mobile/home_page.dart';
import 'package:tugas_mobile/login_google_page.dart';
import 'package:tugas_mobile/category_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', 
      routes: {
        '/': (context) => LoginGooglePage(),
        '/home': (context) => HomePage(),
        // '/category' : (context) => CategoryPage(),
        // '/detail': (context) => DetailPage(),
      },
      theme: ThemeData(
        brightness: Brightness.light, 
        primarySwatch: Colors.amber));
    
  
  }
}