import 'package:flutter/material.dart';

class Emotion extends StatelessWidget {
  final String emotionFace;

  const Emotion({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(15),
      child: Center(
        child:Text(
        emotionFace,
          style: TextStyle(
            fontSize: 20,
          ),
      ),
      ),
    );
  }
}

