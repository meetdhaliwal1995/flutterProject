import 'package:demo/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade200,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name.toString()),
        subtitle: Text(item.description),
        onTap: () {
          print("${item.name} pressed");
        },
        trailing: Text(
          " \$${item.prize.toString()}",
          style: const TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
