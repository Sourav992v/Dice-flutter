import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage()
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceButton = 1;
  var rightDiceButton = 3;

  void changeDiceFace(){
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                  changeDiceFace();
                print('Left button is pressed');
              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                  changeDiceFace();
                print('Right button is pressed');
              },
              child: Image.asset('images/dice$rightDiceButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
