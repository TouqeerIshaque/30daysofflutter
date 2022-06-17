// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';

class Itemwidget extends StatelessWidget {
  final Item item;

  const Itemwidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.red,
      child: ListTile(
        onTap:() {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
