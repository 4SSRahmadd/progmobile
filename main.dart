import 'package:flutter/material.dart';
import 'login.dart';


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
      title: 'Mobile',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffff9900)),
          useMaterial3: true,
          fontFamily: 'Poppins'),
      home: LoginPage(),
    );
  }
}
 
