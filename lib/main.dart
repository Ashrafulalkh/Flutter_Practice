import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); //Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        darkTheme: ThemeData(primarySwatch: Colors.blue),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home:HomeActivity());
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message,context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello'),
            Text('we are here'),
            Text('lets Go'),
            Text('yes'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.date_range),
                Text('What is the Date'),
                Text('How Are You? '),
                Text('Am I Right?'),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('Home Screen',
        style: TextStyle(color: Colors.white),),
      leading: Icon(Icons.home_filled,color: Colors.white,),
      titleSpacing: 10,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      backgroundColor: Colors.green,
      elevation: 2,
        actions: [
          IconButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('Sending Money'),
                content: Text('Are you really want to send money?'),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.post_add),),
                ],
              );
            });
            //ScaffoldMessenger.of(context).showSnackBar(SnackBar(

              // content: Text('This is for you'),
              // backgroundColor: Colors.green,
              // duration: Duration(seconds: 1),

              //),);
          }, icon: Icon(Icons.message)),
        ],
      ),


    );
  }

}