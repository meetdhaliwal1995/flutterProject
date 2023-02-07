import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double days = 30;
  String welcome = "Welcome My First app Flutter app";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
      
        title: const Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text(welcome),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}

