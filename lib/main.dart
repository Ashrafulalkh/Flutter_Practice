import 'package:flutter/material.dart';

main() {
  runApp(App()); //Application
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      //debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 10,
        leading: Icon(Icons.home_filled,color: Colors.white),
        title: Text('Home',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  width: 1,
                  color: Colors.black,
                )
              ),
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
            ),onPressed: () {}, child: Text('Button')),

            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )
                ),
                onPressed: () {}, child: Text('Text button')),

            IconButton(
                onPressed: () {}, icon: Icon(
              Icons.add_circle,
              color: Colors.redAccent,
            )),
          ],
        ),
      ),
    );
  }

}

