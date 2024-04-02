import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('New Arrival of Football Theme Product From DUSAN',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 5, 20),
                child: Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('images/b1.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 5, 20),
                child: Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('images/b2.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 5, 20),
                child: Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('images/b3.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text('Solid Color T-Shirt of DUSAN',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
              ),),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 25, 5, 20),
                    child: Container(
                      height: 160,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/i1.jpg'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 25, 5, 20),
                    child: Container(
                      height: 160,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/i2.jpg'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 25, 5, 20),
                    child: Container(
                      height: 160,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/i3.jpg'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Home Page',style: TextStyle(color: Colors.white),),
      ),
    );
  }

}