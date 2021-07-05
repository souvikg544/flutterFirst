import 'package:flutter/material.dart';
import 'package:intro/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    String name="Souvik";
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar( 

          title: Text(
            "Hello",
          ),
          
        ),
        body: Container(
         
          alignment: Alignment.center,
          height: 400,
          width: 300,
          child: Text("Hey "+name),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
             color: Colors.white,
       )
        ),
        drawer:mydrawer(),
        );
  }
}