import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }

}


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }

}

class _HomeScreen extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('dependencies');
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('update widget');
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green.shade300,
        leading: const Icon(Icons.home_filled,color: Colors.red,),
      ),
      body: Center(
        child: Text(count.toString(),style: const TextStyle(fontSize: 40),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              count --;
              print(count);
              setState(() {});
            },
            child: const Icon(Icons.remove) ,),
          SizedBox(width: 15,),
          FloatingActionButton(
            onPressed: () {
              count ++;
              print(count);
              setState(() {});
            },
            child: const Icon(Icons.add) ,),
          SizedBox(width: 15,),
          FloatingActionButton(
            onPressed: () {
              count = 0;
              print(count);
              setState(() {});
            },
            child: const Icon(Icons.clear) ,),
        ],
      ),

    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

}


