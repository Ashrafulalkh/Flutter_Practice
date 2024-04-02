import 'package:app1/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Login Page',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.fromLTRB(50, 50, 50, 10),
      child: TextField(
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
        decoration: InputDecoration(
            hintText: 'Enter Your Email',
            hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
            labelText: 'Email',
            labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(width: 2,color: Colors.grey),
            )
        ),

      ),
    ),
    Padding(
    padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
    child: TextField(
    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
    decoration: InputDecoration(
    hintText: 'Enter Your Password',
    hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
    labelText: 'Password',
    labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(width: 2,color: Colors.grey),
    )
    ),

    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Padding(
    padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
    child: ElevatedButton(style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent.shade400,
    ),
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
    return Home();
    },),);
    },
    child: Text('Log In',style: TextStyle(fontSize: 15,color: Colors.black),)
    ),
    ),
    ],
    ),
  ],
    ),
    );
  }

}