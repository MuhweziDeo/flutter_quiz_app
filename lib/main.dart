import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    // _questionIndex
    setState(() {
        _questionIndex = 0;
    });
  
  } 
  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "Whats your favourite color?",
      "Whats your favourite animal?",
       "Whats your favourite country?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () {
              print("Answer 3 ");
              setState(() {
                _questionIndex = 1;
              });
            },
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: ()  {
              setState(() {
                _questionIndex = 2;
              });
            },
          ),
        ]),
      ),
    );
  }
}
