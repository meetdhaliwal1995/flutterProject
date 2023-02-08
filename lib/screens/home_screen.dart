import 'package:demo/models/catalog.dart';
import 'package:demo/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  double days = 30;
  String welcome = "Welcome My First app Flutter app";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.product[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My First App",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
            child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        )),
      ),
      drawer: const MyDrawer(),
    );
  }
}
