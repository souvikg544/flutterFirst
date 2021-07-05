import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl="https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png";
    return Drawer(
      elevation: 16.0,
      child:Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                
                margin:EdgeInsets.zero,
                accountName: Text("Souvik"),
                accountEmail:Text("rickhuman7@gmail.com"),
                currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage(imageurl),)
                ),
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.home,
                  color:Colors.white,
                ),
                title:Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style:TextStyle(
                    color:Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.bed_double_fill,
                  color:Colors.white,
                ),
                title:Text(
                  "Fun",
                  textScaleFactor: 1.5,
                  style:TextStyle(
                    color:Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
      
    );
  }
}