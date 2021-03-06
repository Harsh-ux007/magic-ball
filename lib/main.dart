import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text('Ask Me Anything'),
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: FlatButton(
      onPressed: () {
        setState(() {
          ballnumber = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('images/ball.png'),
    )));
  }
  //hii
}
