import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    String name="Souvik";
    return  Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          title: Text("Hello"),
          backgroundColor: Colors.red,
        ),
        body: Container(
         
          alignment: Alignment.center,
          height: 400,
          width: 300,
          child: Text("Hey "+name),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
             color: Colors.orange,
       )
        ),
        drawer: Drawer(
          
        ),
        );
  }
}