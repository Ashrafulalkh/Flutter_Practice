import 'dart:ffi';

import 'package:flutter/material.dart';

main() {
  runApp(SignUp()); //Application
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignUpPage',
      home: Information(),
    );
  }

}

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('SignUp Page',style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.home_filled,color: Colors.white,),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          TextField(
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          ),
          maxLength: 30,
          decoration: InputDecoration(
            hintText: 'Enter Your Email',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
            labelText: 'Email',
              labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(width: 2, color: Colors.red),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(width: 2, color: Colors.black),
            ),

          ),

        ),
          TextField(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
            maxLength: 30,
            decoration: InputDecoration(
              hintText: 'Enter Your Password',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(width: 2, color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(width: 2, color: Colors.black),
              ),

            ),

          ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Sign Up'))
              ],
            )
        ],
        ),
        )
    );
  }

}



