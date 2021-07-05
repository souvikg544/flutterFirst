import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';
import 'package:intro/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/utils/routes.dart';
import 'package:intro/widgets/themes.dart';


void main() {
  runApp(first());
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      theme: Mytheme.Lightheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute:Myroute.homeroute,
      routes: {
        Myroute.homeroute:(context)=>HomePage(),
        Myroute.loginroute:(context)=>loginpage(),
      },
      
    );
}
}