import 'package:flutter/material.dart';
import 'package:intro/models/catalog.dart';
import 'package:intro/widgets/drawer.dart';
import 'package:intro/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    String name="Souvik";
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar( 
          elevation: 0.0,
          title: Text(
            "Hello",
          ),
          
        ),
        body:ListView.builder(
          itemCount:CatalogModel.items.length,
           itemBuilder: (BuildContext context, int index) {
             return itemwidget(item: CatalogModel.items[index], );
             },
          ),
        drawer:mydrawer(),
        );
  }
}