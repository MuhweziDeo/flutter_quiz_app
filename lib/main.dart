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
    // _questionIndex
    setState(() {
      _questionIndex =
          _questionIndex >= 2 ? _questionIndex : _questionIndex + 1;
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
      }
      ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
      ),
    );
  }
}
