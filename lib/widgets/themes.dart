import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Mytheme{
  static ThemeData Lightheme(BuildContext context)=>ThemeData(
     primarySwatch:Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          textTheme: Theme.of(context).textTheme,
        ),
  );
}