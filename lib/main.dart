import 'package:flutter/material.dart';
import 'widgets/bottom_navigation.dart';



void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

var indexClicked = 1;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation App"),
      ),
      
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

