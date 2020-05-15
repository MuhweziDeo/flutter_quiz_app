import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    // questionIndex
    setState(() {
        questionIndex = 0;
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
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () {
              print("Answer 3 ");
              setState(() {
                questionIndex = 1;
              });
            },
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: ()  {
              setState(() {
                questionIndex = 2;
              });
            },
          ),
        ]),
      ),
    );
  }
}
