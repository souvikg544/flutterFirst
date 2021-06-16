import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';


void main() {
  runApp(first());
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    num temp=30;
    return MaterialApp(
      home:HomePage()
      
    );
}
}