import 'package:demo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  double days = 30;
  String welcome = "Welcome My First app Flutter app";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text(welcome),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
