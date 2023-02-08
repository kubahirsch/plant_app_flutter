import 'package:flutter/material.dart';
import 'package:zielonepogotowie/logged_in_scaffold.dart';
import 'package:zielonepogotowie/pages/home_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoggedInScaffold(),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
