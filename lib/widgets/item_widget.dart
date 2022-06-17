import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';

class Itemwidget extends StatelessWidget {
  final Item item;

  const Itemwidget({Key? key, required this.item})
      : 
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.network(item.image),
      title: Text(item.name),
    );
  }
}
