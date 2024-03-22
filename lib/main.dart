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
      backgroundColor: Colors.grey,
      body: Center(
        child:Text('Ashraful I am Learning Flutter And I Am Liking It',
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          backgroundColor: Colors.purple,
          color: Colors.white,
        ),),
      ),
      appBar: AppBar(title: Text('Testing APP'),
      titleSpacing: 10,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      backgroundColor: Colors.green,
      elevation: 2,
      actions: [
        IconButton(onPressed: (){mySnackBar('I am Search', context);}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){mySnackBar('I am Email', context);}, icon: Icon(Icons.email)),
        IconButton(onPressed: (){mySnackBar('I am Settings', context);}, icon: Icon(Icons.settings)),
        IconButton(onPressed: (){mySnackBar('I am Message', context);}, icon: Icon(Icons.message)),
      ],



      ),


    );
  }

}