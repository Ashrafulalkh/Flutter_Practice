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
  List <String> studentList = [
    'Ashraful',
    'Nahid',
    'Doha',
    'Sanjida',
    'Usha'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('SignUp Page',style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.home_filled,color: Colors.white,),
      ),
      /*body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Text('${index + 1}',style: TextStyle(fontSize: 20),);
          }
      ),*/
      /*body: ListView.separated(
        itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Text(studentList[index],textAlign: TextAlign.center,);
          },
          separatorBuilder: (context,index) {
          return Divider(
            height: 10,
            thickness: 2,
            indent: 16,
            endIndent: 16,
            color: Colors.red,
          );
          },
    ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemCount: studentList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(studentList[index])
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                return Divider();
                },

                ),
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 80,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text('Roll - ${index + 1}')
                    ],
                  );
                },
            ),
          ],
        ),
      ),
      );
  }

}



