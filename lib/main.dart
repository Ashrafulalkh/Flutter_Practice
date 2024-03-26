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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 10,
        leading: const Icon(Icons.home_filled,color: Colors.white),
        title: const Text('Home',style: TextStyle(
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

            GestureDetector(
              onDoubleTap: (){ print('double tap detected');},

              onTap: () {
                print('tap detected');
              },

              child: const Column(
                children: [
                  Text('A Button'),
                  Icon(Icons.add_circle),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child:InkWell(
              splashColor: Colors.red,
              radius: 40,
              borderRadius: BorderRadius.circular(50),
              onDoubleTap: (){ print('double tap detected');},

              onTap: () {
                print('tap detected');
              },

              child: const Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.add_circle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('A Button'),

                    ],
                  ),
                ],
              ),
            ) ,),
            Padding(padding: EdgeInsets.all(10),
              child:TextField(
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.redAccent),
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Enter Your Mail',
                  hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,color: Colors.red),
                ),
            ) ,),


          ],
        ),
      ),
    );
  }

}

