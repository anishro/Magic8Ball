import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.lightBlue[600],
        home: Scaffold(
          backgroundColor: Colors.lightBlue[600],
          appBar: AppBar(
            title: Text('ASK ME ANYTHING'),
            elevation: 0,
            backgroundColor: Colors.lightBlue[600],
            centerTitle: true,
          ),
          body: AnswerHome(),
        ),
      ),
    );

class AnswerHome extends StatefulWidget {
  const AnswerHome({Key key}) : super(key: key);

  @override
  _AnswerHomeState createState() => _AnswerHomeState();
}

class _AnswerHomeState extends State<AnswerHome> {
  int magicBall = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              magicBall = Random().nextInt(5) + 1;
            });

            print('$magicBall');
          },
          child: Image.asset('images/ball$magicBall.png'),
        ),
      ),
    );
  }
}
