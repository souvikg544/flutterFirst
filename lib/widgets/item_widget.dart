import 'package:flutter/material.dart';
import 'package:intro/models/catalog.dart';

class itemwidget extends StatelessWidget {
  final Item item;

  const itemwidget({Key? key, required this.item}) :
  assert(item != null),
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading:Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("₹"+item.price.toString(),
          textScaleFactor: 1.4,
          style: TextStyle(color: Colors.deepPurple,
          fontWeight:FontWeight.bold),
          ),
      
        ),
      ),
    );
  }
}