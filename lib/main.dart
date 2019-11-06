import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNo = Random().nextInt(5) + 1;
          });

          print('Tayyab bhati shb button is pressed Now $ballNo');
        },
        child: Center(
          child: Image.asset('images/ball$ballNo.png'),
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('BALL APP'),
      ),
      body: Ball(),
    );
  }
}
