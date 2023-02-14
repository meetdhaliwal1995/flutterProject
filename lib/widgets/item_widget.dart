import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:demo/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

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
          trailing: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.price_change),
                Text(
                  item.prize.toString(),
                  style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ));
  }
}
