import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    setState(() {
      _questionIndex = _questionIndex >= 2 ? 0 : _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<String> questions = [
    //   "Whats your favourite color?",
    //   "Whats your favourite animal?",
    //   "Whats your favourite country?",
    // ];
    var questions = [
      {
        "questionText": "Whats your favourite color",
        "answers": ["Black", "Red", "Blue", "Green", "White"]
      },
      {
        "questionText": "Whats your favourite Animal",
        "answers": ["cat", "dog", "rat", "horse", "pussy"]
      },
      {
        "questionText": "Whats your favourite Car",
        "answers": ["Bmw", "mercedes", "marclaren", "toyota", "pussy"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]["questionText"]),
          ...(questions[_questionIndex]["answers"] as List<String>)
              .map((e){
                print(e);
                return Answer(this._answerQuestion, e);
              })
              .toList(),
        ]),
      ),
    );
  }
}
