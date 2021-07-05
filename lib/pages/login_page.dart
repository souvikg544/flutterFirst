import 'package:flutter/material.dart';
import 'package:intro/utils/routes.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name="";
  final _formkey=GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
    return Material(

      child:SingleChildScrollView(
        child: Form(
          key:_formkey,
          child: Column(
            children: [
                Image.asset(
                "images/login.png",
                fit:BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome $name",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  height: 20,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0, horizontal:30.0),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username"
                    ), 
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  onChanged: (value){
                    name=value;
                    setState(() {
                    });
                  },
                    ),
                   TextFormField(
                     obscureText: true,
                    decoration: InputDecoration(
                    labelText: "Password"
                  ),
                   validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      else if(value.length<6)
                      {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                   ),
                   SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                   child: Text("Login"),
                   style:TextButton.styleFrom(),
                   onPressed: (){
                     if (_formkey.currentState!.validate()) {
                     Navigator.pushNamed(context, Myroute.homeroute);
                     }
                   },
                  ),
                  ],
                ),
              ),
              
            ],
              
          ),
        ),
      ),
      
    );
  }
}